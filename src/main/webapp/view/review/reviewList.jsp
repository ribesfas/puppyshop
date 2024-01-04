<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="dto.ReviewDTO"%>
<%@ page import="dao.ReviewDAO"%>
<%
    ReviewDAO reviewdao = new ReviewDAO(); 
    List<ReviewDTO> list = reviewdao.getList();
    String user_id = (String) session.getAttribute("user_id"); // 세션에서 사용자 아이디 가져오기
%>
<script>
    function deleteReview(reviewNumber) {
        if (confirm("정말로 이 리뷰를 삭제하시겠습니까?")) {
            fetch('DeleteReviewServlet?reviewNumber=' + reviewNumber, {
                method: 'GET'
            })
            .then(response => {
                if (response.ok) {
                    // 삭제 성공 시 리뷰 목록 페이지로 리다이렉트 또는 다른 처리
                    window.location.href = 'reviewList.jsp';
                } else {
                    // 삭제 실패 시 에러 메시지 등을 처리하는 부분
                    console.error('Failed to delete review.');
                }
            })
            .catch(error => {
                console.error('Error:', error);
            });
        }
    }
</script>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>리뷰 목록</title>
    <style>
        .deleteButton {
            color: red;
            cursor: pointer;
        }

        .yellow-star {
            color: #e8ca43; /* 별의 색상을 노란색으로 설정 */
        }

        .button {
            width: 100px;
            padding: 8px;
            border: none;
            border-radius: 3px;
            background-color: #30302e;
            color: white;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h1>리뷰 목록</h1>
    
    <%
        for(ReviewDTO review : list) {
    %>
        <div>
            <p><%= review.getUser_id()%> <%= review.getReview_date() %>
            <% int starCount = review.getReview_star(); // 리뷰의 별 개수를 가져옴
                for (int i = 0; i < starCount; i++) {
            %>
                <span class="yellow-star">&#9733;</span> <!-- 노란색 별 출력 -->
            <% } %>

            <% // 현재 리뷰의 작성자 아이디와 세션의 사용자 아이디 비교하여 삭제 버튼 표시 여부 결정
                if (user_id != null && user_id.equals(review.getUser_id())) {
            %>
                <button class="deleteButton" onclick="deleteReview(<%= review.getReview_number() %>)">삭제</button>
            <% } %>
            </p>
            <p><%= review.getReview_text() %> <%= review.getReview_emotion() %></p>
        </div>
        <hr>
    <%
        }
    %>

  

</body>
</html>
