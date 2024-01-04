package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.DBConnector;
import dto.ServicecenterDTO;

public class ServicecenterDAO {
	private Connection conn;
	public ServicecenterDAO() {

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
    // ProductDTO를 가져오는 메서드
  public List<ServicecenterDTO> getAllProducts() {
	  List<ServicecenterDTO> dataList = new ArrayList<>();
      PreparedStatement pstmt = null;
      ResultSet rs = null;
	    
	  

	    try {
	    	String sql = "SELECT * FROM service_center";
	        conn = DBConnector.getConnection();
	        pstmt = conn.prepareStatement(sql);
	        rs = pstmt.executeQuery();

	        while (rs.next()) {
	        	ServicecenterDTO service = new ServicecenterDTO();
	        	service.setService_title(rs.getString("service_title"));
	        	service.setService_text(rs.getString("service_text"));
	        	service.setUser_id(rs.getString("user_id"));
	        	service.setService_date(rs.getString("service_date"));
	            dataList.add(service);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        // 예외 처리
	    } finally {
	        closeResources(rs, pstmt);
	        closeConnection();
	    }

	    return dataList; // 수정된 부분: products 리스트 반환
	}
  
}
