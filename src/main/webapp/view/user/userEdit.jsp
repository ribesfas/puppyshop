<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.UserDTO"%>
<%@ page import="dao.UserDAO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>사용자 정보 수정</title>
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
   		HttpSession session3 = request.getSession();
        String user_name = (String) session2.getAttribute("user_name"); // 세션에서 사용자 아이디 가져오기
        String user_id= (String) session3.getAttribute("user_id"); // 세션에서 사용자 아이디 가져오기
		System.out.println(user_id);
        if (user_name != null) {
            UserDAO userDAO = new UserDAO(); // DAO 객체 생성
            UserDTO user = userDAO.getUserById(user_id); // 사용자 아이디로 유저 정보 조회

            if (user != null) {
    %>
    <form  action="/updateUserInfoServlet" method="post">
        <table width="600px" name="frm" align="center">
            <tr>
                <td align="center">
                    <table width="100%" class="table">
                        <tr align="center">
                            <td><b>회원정보 조회 및 수정</b></td>
                        </tr>
                    </table>
                    <table class="table2" width="100%">
                        <tr>
                            <td width="35%">아이디</td>
                            <td width="65%"><%= user.getUser_id() %></td>
                        </tr>           
                        <tr>
                            <td>User Name</td>
                            <td><input type="text" name="userName" value="<%= user.getUser_name() %>"></td>
                        </tr>           
                        <tr>
                            <td>User Email</td>
                            <td><input type="text" name="userEmail" value="<%= user.getUser_email() %>"></td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <input class="button" type="submit" value="수정하기">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
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
