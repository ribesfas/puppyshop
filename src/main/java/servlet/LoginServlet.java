package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import dao.UserDAO;
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userid = request.getParameter("userid");
        String password = request.getParameter("password");
        
        UserDAO userDao = new UserDAO();      
        boolean loginSuccessful = userDao.loginUser(userid, password);

        if (loginSuccessful) {
        	String user_name = userDao.getUsername(userid);
        	String user_group = userDao.getUserGroup(userid);

        	HttpSession session = request.getSession();
        	session.setAttribute("user_name", user_name);
        	session.setAttribute("user_id", userid);
        	session.setAttribute("user_group", user_group);
        	System.out.println("----LoginServlet-----");
        	System.out.println(user_name);
        	System.out.println(userid);
        	System.out.println(user_group);

            response.sendRedirect("index.jsp"); // 로그인 성공 시 이동할 페이지
        } else {
            response.sendRedirect("view/user/userLogin.jsp"); // 로그인 실패 시 이동할 페이지
        }
    }
}
