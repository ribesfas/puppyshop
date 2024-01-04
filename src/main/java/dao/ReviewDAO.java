package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.DBConnector;
import dto.ReviewDTO;
public class ReviewDAO {

    private Connection conn;

    public ReviewDAO() {
        conn = DBConnector.getConnection();
    }

    public void closeResources(ResultSet rs, PreparedStatement stmt) {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void closeConnection() {
        try {
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    //글쓰기

    public int write(String Review_text, String user_id, Integer Review_star, Integer product_id) {
        String query = "INSERT INTO REVIEW (review_text, review_star, user_id, review_product_id, review_emotion) VALUES (?,?,?,?,?)";
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            stmt = conn.prepareStatement(query);
            stmt.setString(1, Review_text);
            stmt.setInt(2, Review_star);
            stmt.setString(3, user_id);
            stmt.setInt(4, product_id);
            stmt.setString(5, ""); // 또는 기본값 설정

            return stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        } finally {
            closeResources(rs, stmt);
        }
    }

    //목록, 리스트 불러오기
    public List<ReviewDTO> getList() {
        List<ReviewDTO> dataList = new ArrayList<>();
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            String query = "SELECT * FROM review"; // 여기에 적절한 쿼리 입력
            stmt = conn.prepareStatement(query);
            rs = stmt.executeQuery();

            while (rs.next()) {
                ReviewDTO rdto = new ReviewDTO();
                rdto.setReview_number(rs.getInt("review_number"));
                rdto.setReview_text(rs.getString("review_text"));
                rdto.setReview_star(rs.getInt("review_star"));
                rdto.setUser_id(rs.getString("user_id"));
                rdto.setReview_date(rs.getString("review_date"));
                rdto.setReview_product_id(rs.getInt("review_product_id"));
                rdto.setReview_emotion(rs.getString("review_emotion"));

                dataList.add(rdto);
            }
        } catch (SQLException e) {
            throw new RuntimeException("데이터를 가져오는 동안 에러 발생: " + e.getMessage());
        } finally {
            closeResources(rs, stmt);
            closeConnection();
        }
        return dataList;
    }
    
    //글 삭제 --리뷰 number를 기준으로 
    public int deleteReview(int reviewNumber) {
        String query = "DELETE FROM review WHERE review_number = ?";
        PreparedStatement stmt = null;

        try {
            stmt = conn.prepareStatement(query);
            stmt.setInt(1, reviewNumber);

            return stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return -1;
        } finally {
            closeResources(null, stmt);
        }
    }
}