package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dto.UserDTO;
import dao.UserDAO;
@WebServlet("/updateUserInfoServlet")
public class UpdateUserInfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String userEmail = request.getParameter("userEmail");

        // 세션에서 사용자 아이디 가져오기
        String userID = (String) request.getSession().getAttribute("user_id");

        if (userID != null) {
            UserDTO user = new UserDTO();
            user.setUser_id(userID); // user_id 설정
            user.setUser_name(userName);
            user.setUser_email(userEmail);

            UserDAO userDAO = new UserDAO();
            boolean success = userDAO.updateUser(user);

            if (success) {
                response.sendRedirect("view/user/userInfo.jsp");
            } else {
                // 업데이트 실패 처리
                response.getWriter().println("업데이트 실패!");
            }
        } else {
            // 사용자 아이디가 없는 경우 처리
            response.getWriter().println("사용자 아이디 없음!");
        }
    }
}
