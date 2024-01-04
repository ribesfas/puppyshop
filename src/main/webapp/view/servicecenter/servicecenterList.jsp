<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.Statement"  %>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.SQLException" %>
<%@ page import="dto.ServicecenterDTO"%>
<%@ page import="dao.ServicecenterDAO"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.list th {
    height: 30px;
    text-align: center;
    border: 1px solid #e1e1e1;
    background-color: #797979;
    color: white;
}
.list td {
    height: 30px;
    text-align: center;
    border: 1px solid #e1e1e1;
}

</style>
</head>
<body>
 <%@ include file="../../header2.jsp"%>
<%
ServicecenterDAO dao = new ServicecenterDAO(); 
List<ServicecenterDTO> services = dao.getAllProducts(); // 리스트에 데이터 저장


%>
<table class="list" border="0" align="center"cellspacing="0" cellpadding="0" style="width: 100%;">
    <colgroup>
        <col width="20%" />
        <col width="50%" />
    </colgroup>
    <tr>
        <th>번호</th>
        <th>제목</th>
        <th>글쓴이</th>
    </tr>
     <% for (ServicecenterDTO service : services) {%>
        <tr>
            <td><%= service.getService_date() %></td>
            <td><%= service.getService_title() %></td>
            <td><%= service.getUser_id() %></td>
        </tr>
        <%} %>

</table>
</body>
</html>