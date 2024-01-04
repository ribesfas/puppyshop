<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List"%>
<%@ page import="dto.ReviewDTO"%>
<%@ page import="dao.ReviewDAO" %>

<script>
    let selectedRating = 0;
    let dragging = false;

    function startDrag(event) {
        dragging = true;
        drag(event);
    }

    function endDrag() {
        dragging = false;
        document.getElementById('selectedRating').value = selectedRating;
    }

    function drag(event) {
        if (dragging) {
            const stars = document.querySelectorAll('.star');
            const boundingRect = stars[0].getBoundingClientRect();
            const starWidth = boundingRect.width;
            const offsetX = event.clientX - boundingRect.left;
            const index = Math.floor(offsetX / starWidth);

            highlightStars(index + 1);
            selectedRating = index + 1;
        }
    }

    function highlightStars(rating) {
        const stars = document.querySelectorAll('.star');
        stars.forEach((star, index) => {
            if (index < rating) {
                star.innerText = '★';
            } else {
                star.innerText = '☆';
            }
        });
    }
    document.getElementById('reviewText').addEventListener('input', function() {
        if (this.value.length > 200) {
            this.value = this.value.substring(0, 200);
        }
    });

</script>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>리뷰 작성 페이지</title>
    <style>
        .stars {
            unicode-bidi: bidi-override;
            color: #c5c5c5;
            font-size: 25px;
            display: inline-block;
            overflow: hidden;
        }

        .stars:hover,
        .stars:hover ~ .star {
            color: #ffcc00;
        }

        .star {
            display: inline-block;
            position: relative;
            width: 1.1em;
            cursor: pointer;
        }

        .star:before {
            content: '★';
            position: absolute;
        }
        
    </style>
</head>
<body>
    <head>
    <meta charset="UTF-8">
    <title>리뷰 작성 페이지</title>
    <!-- 스타일 등 필요한 CSS/JS 추가 -->
</head>
<body>
    <h1>리뷰 작성 페이지</h1>

    <form action="saveReview.jsp" method="POST">

        <label for="reviewText">리뷰 텍스트:</label><br>
        <textarea id="reviewText" name="reviewText" rows="4" cols="50" placeholder="리뷰 내용을 입력해주세요..."></textarea><br>

        <label for="reviewStars">별점:</label><br>
        <!-- 별점 표시 및 선택을 위한 HTML/CSS/JS -->

        <input type="submit" value="리뷰 작성 완료">
    </form>
</body>
</html>
<script>
        `document.getElementById('reviewForm').addEventListener('submit', function(event) {
            event.preventDefault(); // 기본 제출 방지
            const formData = new FormData(this);

            // Fetch API를 사용하여 Flask 서버로 데이터 전송
            fetch('/submit_review', {
                method: 'POST',
                body: formData
            })
            .then(response => response.json())
            .then(data => {
                // 서버로부터의 응답을 처리
                console.log(data);
            })
            .catch(error => {
                // 오류 처리
                console.error('Error:', error);
            });
        });
    </script>