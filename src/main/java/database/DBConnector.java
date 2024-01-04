package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnector {
    private static Connection conn; // 인스턴스 변수가 아니라 클래스 변수로 변경
    
    public static Connection getConnection() {
        try {
            // JDBC 드라이버 로드
            Class.forName("com.mysql.jdbc.Driver");
            
            // 데이터베이스 연결 정보
            String url = "jdbc:mysql://localhost:3306/petshop";
            String username = "root";
            String password = "admin";

            // 데이터베이스 연결
            conn = DriverManager.getConnection(url, username, password);
            if (conn != null && !conn.isClosed()) {
                // 연결됨
                System.out.println("데이터베이스와 연결되었습니다.");
            } else {
                // 연결 실패
            	System.out.println("데이터베이스 연결에 실패했습니다.");
            }
            return conn;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    
    public static void closeConnection() {
        try {
            if (conn != null && !conn.isClosed()) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
