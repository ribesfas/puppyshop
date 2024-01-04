
<%@ page import="java.sql.*"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.Statement"  %>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.SQLException" %>
<%@ page import="dto.ProductDTO"%>
<%@ page import="dao.ProductDAO"%>
<%@ page import="java.util.List" %>
<html>
<head>
 <link rel="stylesheet" type="text/css" href="../../resource/css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="../../resource/css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="../../resource/css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="../../resource/images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="../../resource/css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- fonts -->
      <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
      <!-- font awesome -->
      <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <!--  -->
      <!-- owl stylesheets -->
      <link href="https://fonts.googleapis.com/css?family=Great+Vibes|Poppins:400,700&display=swap&subset=latin-ext" rel="stylesheet">
      <link rel="stylesheet" href="../../resource/css/owl.carousel.min.css">
      <link rel="stylesoeet" href="../../resource/css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
<title>상품 목록</title>
</head>
<body>
 <%@ include file="../../header.jsp"%>
<%
ProductDAO dao = new ProductDAO(); 
List<ProductDTO> products = dao. getOuterProducts(); // 리스트에 데이터 저장


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


<script src="<%= request.getContextPath() %>/resources/js/jquery.min.js"></script>
            <script src="<%= request.getContextPath() %>/resources/js/popper.min.js"></script>
            <script src="<%= request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>
            <script src="<%= request.getContextPath() %>/resources/js/jquery-3.0.0.min.js"></script>
            <script src="<%= request.getContextPath() %>/resources/js/plugin.js"></script>
            <!-- sidebar -->
            <script src="<%= request.getContextPath() %>/resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
            <script src="<%= request.getContextPath() %>/resources/js/custom.js"></script>
            <script>
               function openNav() {
                 document.getElementById("mySidenav").style.width = "250px";
               }
               
               function closeNav() {
                 document.getElementById("mySidenav").style.width = "0";
               }
            </script>

	
	<jsp:include page="../../footer.jsp" />
</body>
</html>