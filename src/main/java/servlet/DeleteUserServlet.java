package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;

@WebServlet("/deleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 세션에서 사용자 아이디 가져오기
        String userID = (String) request.getSession().getAttribute("user_id");

        if (userID != null) {
            UserDAO userDAO = new UserDAO();
            boolean success = userDAO.deleteUser(userID);

            if (success) {
                // 삭제가 성공했을 경우 세션을 무효화하고 로그인 페이지로 이동
                request.getSession().invalidate();
                response.sendRedirect("view/user/userLogin.jsp");
            } else {
                // 삭제 실패 처리
                response.getWriter().println("아이디 삭제 실패!");
            }
        } else {
            // 사용자 아이디가 없는 경우 처리
            response.getWriter().println("사용자 아이디 없음!");
        }
    }
}
