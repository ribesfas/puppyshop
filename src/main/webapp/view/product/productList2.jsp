
<%@ page import="java.sql.*"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.Statement"  %>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.SQLException" %>
<%@ page import="dto.ProductDTO"%>
<%@ page import="dao.ProductDAO"%>
<%@ page import="java.util.List" %>
<html>
<head>
 
</head>
<body>

<%
ProductDAO dao = new ProductDAO(); 
List<ProductDTO> products = dao.getAllProducts(); // 리스트에 데이터 저장


%>
		
 <div class="jewellery_section">
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <div class="container">
                       <h1 class="fashion_taital">SEASON ITEMS </h1>
							 <div class="fashion_section_2">
                        <div class="row">
                            <% for (ProductDTO product : products) {%>
                           <div class="col-lg-4 col-sm-4">
                                    
                              <div class="box_main">	
                              
                                 <h4 class="shirt_text"><%= product.getProduct_name() %></h4>
                                 <p class="price_text">販売価格：
                                    <span style="color: #262626;">￥<%= product.getPrice() %>
								</span></p>
                                 	        
                                 <div class="jewellery_img">                               
                                 	 <img src="<%= product.getProduct_img() %>" style="width: 100%">
                                 </div><!-- --jewellery_img -->
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="#">Add Cart</a></div>
                                    <div class="seemore_bt">
                                    	<a href="productDetail.jsp?product_id=<%= product.getProduct_id() %>">See More</a>                                   
                                    </div><!-- -상세정보 링크 -->
                                 </div><!-- -btn_main -->
                              </div><!-- -box main -->
                                    </div><!---col-lg-4 col-sm-4-->        <%
    }
%>
         
					</div><!-- --row -->
                     </div><!-- -fasion section 2 -->
                  </div><!-- -container -->
               </div><!-- -carousel-item active -->
		 </div>  <!-- --carousel-inner -->

            <a class="carousel-control-prev" href="#jewellery_main_slider" role="button" data-slide="prev">
            <i class="fa fa-angle-left"></i>
            </a>
            <a class="carousel-control-next" href="#jewellery_main_slider" role="button" data-slide="next">
            <i class="fa fa-angle-right"></i>
            </a>
            

            
	</div><!----주얼리 섹션 끝-->


</body>
</html>