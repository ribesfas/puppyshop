package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet  {
	// Java Servlet을 사용하는 경우
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    
		HttpSession session = request.getSession(false); // 새 세션이 없으면 새로 생성하지 않고, null 반환
	    if (session != null) {
	        session.invalidate(); // 세션 무효화
	    }
	    response.sendRedirect("index.jsp"); // 로그인 성공 시 이동할 페이지
	}

}
