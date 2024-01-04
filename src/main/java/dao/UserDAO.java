package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.DBConnector;
import dto.UserDTO;

public class UserDAO {
	private Connection conn;

    public UserDAO() {
//        conn = DBConnector.getConnection();
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

    public boolean addUser(UserDTO user) {
        String query = "INSERT INTO user (user_id, user_password, user_name, user_email, user_phone, user_gender, user_group) " +
                       "VALUES (?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
        	conn = DBConnector.getConnection();
            stmt = conn.prepareStatement(query);
            stmt.setString(1, user.getUser_id());
            stmt.setString(2, user.getUser_password());
            stmt.setString(3, user.getUser_name());
            stmt.setString(4, user.getUser_email());
            stmt.setString(5, user.getUser_phone());
            stmt.setString(6, user.getUser_gender());
            stmt.setString(7, user.getUser_group());

            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            closeResources(rs, stmt);
            closeConnection();
        }
    }

    public List<UserDTO> getAllUsers() {
        List<UserDTO> userList = new ArrayList<>();
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
        	conn = DBConnector.getConnection();
            String query = "SELECT * FROM user";
            stmt = conn.prepareStatement(query);
            rs = stmt.executeQuery();

            while (rs.next()) {
                UserDTO user = new UserDTO();
                user.setUser_id(rs.getString("user_id"));
                user.setUser_password(rs.getString("user_password"));
                user.setUser_name(rs.getString("user_name"));
                user.setUser_email(rs.getString("user_email"));
                user.setUser_phone(rs.getString("user_phone"));
                user.setUser_gender(rs.getString("user_gender"));
                user.setUser_group(rs.getString("user_group"));

                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(rs, stmt);
            closeConnection();
        }
        return userList;
    }
    
    public boolean loginUser(String userId, String userPassword) {
        String query = "SELECT * FROM user WHERE user_id = ? AND user_password = ?";
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
        	conn = DBConnector.getConnection();
            stmt = conn.prepareStatement(query);
            stmt.setString(1, userId);
            stmt.setString(2, userPassword);

            rs = stmt.executeQuery();
            return rs.next(); // 로그인 성공 여부 반환
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            closeResources(rs, stmt);
            closeConnection();
        }
    }

    public boolean deleteUser(String userId) {
        String query = "DELETE FROM user WHERE user_id = ?";
        PreparedStatement stmt = null;

        try {
        	conn = DBConnector.getConnection();
            stmt = conn.prepareStatement(query);
            stmt.setString(1, userId);

            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0; // 탈퇴 성공 여부 반환
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            closeResources(null, stmt);
            closeConnection();
        }
    }

    public String getUsername(String userid) {
        String query = "SELECT user_name FROM user WHERE user_id = ?";
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
        	conn = DBConnector.getConnection();
            stmt = conn.prepareStatement(query);
            stmt.setString(1, userid);

            rs = stmt.executeQuery();
            if (rs.next()) {
            	System.out.println(userid+"의 닉네임은>>>"+rs.getString("user_name"));
                return rs.getString("user_name"); // 사용자 이름 반환
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(rs, stmt);
            closeConnection();
        }

        return null; // 해당 사용자를 찾지 못한 경우 null 반환
    }
    public String getUserGroup(String userid) {
        String query = "SELECT user_group FROM user WHERE user_id = ?";
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
        	conn = DBConnector.getConnection();
            stmt = conn.prepareStatement(query);
            stmt.setString(1, userid);

            rs = stmt.executeQuery();
            if (rs.next()) {
            	System.out.println(userid+"의 닉네임은>>>"+rs.getString("user_group"));
                return rs.getString("user_group"); // 사용자 이름 반환
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(rs, stmt);
            closeConnection();
        }

        return null; // 해당 사용자를 찾지 못한 경우 null 반환
    }
    // 유저 아이디로 유저 정보를 조회하는 메서드
    public UserDTO getUserById(String userName) {
        String query = "SELECT * FROM user WHERE user_id = ?";
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
        	conn = DBConnector.getConnection();
            stmt = conn.prepareStatement(query);
            stmt.setString(1, userName);

            rs = stmt.executeQuery();
            if (rs.next()) {
                UserDTO user = new UserDTO();
                user.setUser_id(rs.getString("user_id"));
                user.setUser_name(rs.getString("user_name"));
                user.setUser_email(rs.getString("user_email"));
                user.setUser_phone(rs.getString("user_phone"));
                user.setUser_gender(rs.getString("user_gender"));
                user.setUser_group(rs.getString("user_group"));

                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources(rs, stmt);
            closeConnection();
        }

        return null; // 해당하는 사용자 정보가 없는 경우 null 반환
    }

    public boolean updateUser(UserDTO user) {
        String query = "UPDATE user SET user_name=?, user_email=? WHERE user_id=?";
        PreparedStatement stmt = null;

        try {
        	conn = DBConnector.getConnection();
        	stmt = conn.prepareStatement(query);
            stmt.setString(1, user.getUser_name());
            stmt.setString(2, user.getUser_email());
            stmt.setString(3, user.getUser_id());

            int rowsAffected = stmt.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            closeResources(null, stmt);
        }
    }

}
