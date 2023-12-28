<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
    Connection conn = null;
    String url = "jdbc:mysql://호스트명:포트번호/데이터베이스명";
    String user = "사용자명";
    String password = "비밀번호";

    try {
        // MySQL 서버에 연결
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, password);
        out.println("MySQL에 성공적으로 연결되었습니다!");
    } catch (Exception e) {
        out.println("MySQL 연결 실패: " + e.getMessage());
    } finally {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>
