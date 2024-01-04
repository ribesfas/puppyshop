package servlet;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import dao.ReviewDAO;
@WebServlet("/deleteReviewServlet")
public class DeleteReviewServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 파라미터로 전달된 리뷰 번호 가져오기
        int reviewNumber = Integer.parseInt(request.getParameter("reviewNumber"));
        System.out.println(reviewNumber);
        // ReviewDAO를 사용하여 리뷰 삭제
        ReviewDAO reviewDAO = new ReviewDAO();
        
     // isDeleted를 int로 변경하여 성공 여부를 정수 값으로 표현
        int isDeleted = reviewDAO.deleteReview(reviewNumber);

        if (isDeleted == 1) {
            // 삭제 성공 시 리뷰 목록 페이지로 리다이렉트 또는 다른 처리
            response.sendRedirect("reviewList.jsp");
        } else {
            // 삭제 실패 시 에러 메시지 등을 처리하는 부분
            response.getWriter().println("Failed to delete review.");
        }

       
    }
}
