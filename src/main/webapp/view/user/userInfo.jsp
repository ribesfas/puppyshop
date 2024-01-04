<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dto.UserDTO"%>
<%@ page import="dao.UserDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>  <%= session.getAttribute("user_name") %>님의 정보</title>
 <style>
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
	<%@ include file="../../header2.jsp"%>
	<%
        HttpSession session2 = request.getSession();
        String user_id = (String) session.getAttribute("user_id"); // 세션에서 사용자 아이디 가져오기

        if (user_id != null) {
            UserDAO userDAO = new UserDAO(); // DAO 객체 생성
            UserDTO user = userDAO.getUserById(user_id); // 사용자 아이디로 유저 정보 조회

            if (user != null) {
    %>
    
    <table width="600px" name="frm" align="center">
	<tr>
		<td align="center">
			
			<table width="100%" class="table">
				<tr align="center">
					<td><b>회원정보 조회</b></td>
				</tr>
			</table>
				
			<table class="table2" width="100%">
			
					<tr>
						<td width="35%">아이디</td>
						<td width="65%"><%= user.getUser_id() %></td>
					</tr>			
					<tr>
						<td>User Name</td>
						<td><%= user.getUser_name() %></td>
					</tr>			
					<tr>
						<td>User Email</td>
						<td><%= user.getUser_email() %></td>
					</tr>
					<tr>
						<td>User Phone </td>
						<td><%= user.getUser_phone() %></td>
					</tr>
					<tr>
						<td>User gender</td>
						<td><%= user.getUser_gender() %></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
					</tr>
				
		<!-- 		-----로그인정보-----		 -->
					
					</table>				
					<table>
					<tr>
						<td colspan="2" align="center">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="userEdit.jsp" class="button">회원정보 수정</a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="/deleteUserServlet"><button class="button" >아이디 삭제</button></a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;		
							<a href="/logout"><button class="button">로그아웃</button></a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;						
						</td>
					</tr>	
					</table>
												
				</form>
			</table>
			
		</td>
	</tr>
</table>	
              
    <%
            } else {
    %>
                <p>User not found!</p>
    <%
            }
        } else {
    %>
            <p>User not logged in!</p>
    <%
        }
    %>
</body>
</html>