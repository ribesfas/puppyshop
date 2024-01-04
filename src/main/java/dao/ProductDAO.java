package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.ProductDTO;
import dto.ReviewDTO;
import database.DBConnector;

public class ProductDAO {
	private Connection conn;
	public ProductDAO() {

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
  public List<ProductDTO> getAllProducts() {
	  List<ProductDTO> dataList = new ArrayList<>();
      PreparedStatement pstmt = null;
      ResultSet rs = null;
	    
	  

	    try {
	    	String sql = "SELECT * FROM product";
	        conn = DBConnector.getConnection();
	        pstmt = conn.prepareStatement(sql);
	        rs = pstmt.executeQuery();

	        while (rs.next()) {
	            ProductDTO product = new ProductDTO();
	            product.setProduct_id(rs.getInt("product_id"));
                product.setProduct_date(rs.getString("product_date"));
                product.setProduct_name(rs.getString("product_name"));
                product.setPrice(rs.getInt("price"));
                product.setProduct_cagetory(rs.getString("poduct_category"));
                product.setDescription(rs.getString("description"));
                product.setInstock(rs.getString("instock"));
                product.setProduct_color(rs.getString("product_color"));
                product.setProduct_size(rs.getString("product_size"));
                product.setProduct_img(rs.getString("procuct_img"));
                product.setProduct_note(rs.getString("product_note"));

               
	            dataList.add(product);
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
  
  
  // ProductNEW
  public List<ProductDTO> getNEWProducts() {
	  List<ProductDTO> dataList = new ArrayList<>();
      PreparedStatement pstmt = null;
      ResultSet rs = null;
	    
	  

	    try {
	    	String sql = "SELECT * FROM product WHERE product_note = 'NEW'";
	        conn = DBConnector.getConnection();
	        pstmt = conn.prepareStatement(sql);
	        rs = pstmt.executeQuery();

	        while (rs.next()) {
	            ProductDTO product = new ProductDTO();
	            product.setProduct_id(rs.getInt("product_id"));
                product.setProduct_date(rs.getString("product_date"));
                product.setProduct_name(rs.getString("product_name"));
                product.setPrice(rs.getInt("price"));
                product.setProduct_cagetory(rs.getString("poduct_category"));
                product.setDescription(rs.getString("description"));
                product.setInstock(rs.getString("instock"));
                product.setProduct_color(rs.getString("product_color"));
                product.setProduct_size(rs.getString("product_size"));
                product.setProduct_img(rs.getString("procuct_img"));
                product.setProduct_note(rs.getString("product_note"));

               
	            dataList.add(product);
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
  

  // ProductSALE
  public List<ProductDTO> getSALEProducts() {
	  List<ProductDTO> dataList = new ArrayList<>();
      PreparedStatement pstmt = null;
      ResultSet rs = null;
	    
	  

	    try {
	    	String sql = "SELECT * FROM product WHERE product_note = 'SALE'";
	        conn = DBConnector.getConnection();
	        pstmt = conn.prepareStatement(sql);
	        rs = pstmt.executeQuery();

	        while (rs.next()) {
	            ProductDTO product = new ProductDTO();
	            product.setProduct_id(rs.getInt("product_id"));
                product.setProduct_date(rs.getString("product_date"));
                product.setProduct_name(rs.getString("product_name"));
                product.setPrice(rs.getInt("price"));
                product.setProduct_cagetory(rs.getString("poduct_category"));
                product.setDescription(rs.getString("description"));
                product.setInstock(rs.getString("instock"));
                product.setProduct_color(rs.getString("product_color"));
                product.setProduct_size(rs.getString("product_size"));
                product.setProduct_img(rs.getString("procuct_img"));
                product.setProduct_note(rs.getString("product_note"));

               
	            dataList.add(product);
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
  
  
  
  // ProductHair
  public List<ProductDTO> getSuppliesProducts() {
	  List<ProductDTO> dataList = new ArrayList<>();
      PreparedStatement pstmt = null;
      ResultSet rs = null;
	    
	  

	    try {
	    	String sql = "SELECT * FROM product WHERE poduct_category = 'DogSupplies'";
	        conn = DBConnector.getConnection();
	        pstmt = conn.prepareStatement(sql);
	        rs = pstmt.executeQuery();

	        while (rs.next()) {
	            ProductDTO product = new ProductDTO();
	            product.setProduct_id(rs.getInt("product_id"));
                product.setProduct_date(rs.getString("product_date"));
                product.setProduct_name(rs.getString("product_name"));
                product.setPrice(rs.getInt("price"));
                product.setProduct_cagetory(rs.getString("poduct_category"));
                product.setDescription(rs.getString("description"));
                product.setInstock(rs.getString("instock"));
                product.setProduct_color(rs.getString("product_color"));
                product.setProduct_size(rs.getString("product_size"));
                product.setProduct_img(rs.getString("procuct_img"));
                product.setProduct_note(rs.getString("product_note"));

               
	            dataList.add(product);
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
  
  // ProductOuter
  public List<ProductDTO> getOuterProducts() {
	  List<ProductDTO> dataList = new ArrayList<>();
      PreparedStatement pstmt = null;
      ResultSet rs = null;
	    
	  

	    try {
	    	String sql = "SELECT * FROM product WHERE poduct_category = 'Outer'";
	        conn = DBConnector.getConnection();
	        pstmt = conn.prepareStatement(sql);
	        rs = pstmt.executeQuery();

	        while (rs.next()) {
	            ProductDTO product = new ProductDTO();
	            product.setProduct_id(rs.getInt("product_id"));
                product.setProduct_date(rs.getString("product_date"));
                product.setProduct_name(rs.getString("product_name"));
                product.setPrice(rs.getInt("price"));
                product.setProduct_cagetory(rs.getString("poduct_category"));
                product.setDescription(rs.getString("description"));
                product.setInstock(rs.getString("instock"));
                product.setProduct_color(rs.getString("product_color"));
                product.setProduct_size(rs.getString("product_size"));
                product.setProduct_img(rs.getString("procuct_img"));
                product.setProduct_note(rs.getString("product_note"));

               
	            dataList.add(product);
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
  
  // ProductOuter
  public List<ProductDTO> getTopProducts() {
	  List<ProductDTO> dataList = new ArrayList<>();
      PreparedStatement pstmt = null;
      ResultSet rs = null;
	    
	  

	    try {
	    	String sql = "SELECT * FROM product WHERE poduct_category = 'Top'";
	        conn = DBConnector.getConnection();
	        pstmt = conn.prepareStatement(sql);
	        rs = pstmt.executeQuery();

	        while (rs.next()) {
	            ProductDTO product = new ProductDTO();
	            product.setProduct_id(rs.getInt("product_id"));
                product.setProduct_date(rs.getString("product_date"));
                product.setProduct_name(rs.getString("product_name"));
                product.setPrice(rs.getInt("price"));
                product.setProduct_cagetory(rs.getString("poduct_category"));
                product.setDescription(rs.getString("description"));
                product.setInstock(rs.getString("instock"));
                product.setProduct_color(rs.getString("product_color"));
                product.setProduct_size(rs.getString("product_size"));
                product.setProduct_img(rs.getString("procuct_img"));
                product.setProduct_note(rs.getString("product_note"));

               
	            dataList.add(product);
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
  
  
  public ProductDTO getProductById(int productId) {
	    ProductDTO product = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    
	    try {
	        String sql = "SELECT * FROM product WHERE product_id = ?";
	        conn = DBConnector.getConnection();
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setInt(1, productId);
	        rs = pstmt.executeQuery();

	        if (rs.next()) {
	            product = new ProductDTO();
	            product.setProduct_id(rs.getInt("product_id"));
	            product.setProduct_date(rs.getString("product_date"));
	            product.setProduct_name(rs.getString("product_name"));
	            product.setDescription(rs.getString("description"));
                product.setProduct_img(rs.getString("procuct_img"));
	            product.setPrice(rs.getInt("price"));
	            // 나머지 필드들도 설정
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        // 예외 처리
	    } finally {
	        closeResources(rs, pstmt);
	        closeConnection();
	    }

	    return product;
	}

}