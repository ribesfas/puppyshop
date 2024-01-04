package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import dto.UserDTO;

@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userid = request.getParameter("userid");
    	String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");
        String user_group = request.getParameter("user_group");

        UserDTO user = new UserDTO();
        user.setUser_id(userid);
        user.setUser_name(username);
        user.setUser_password(password);
        user.setUser_email(email);
        user.setUser_phone(phone);
        user.setUser_gender(gender);
        user.setUser_group(user_group);

        UserDAO userDao = new UserDAO();
        boolean added = userDao.addUser(user);

        if (added) {
            response.sendRedirect("view/user/userLogin.jsp"); // 회원가입 성공 시 로그인 페이지로 이동
        } else {
            response.sendRedirect("view/user/userSignUpPage.jsp"); // 회원가입 실패 시 다시 회원가입 페이지로 이동
        }
    }
}
