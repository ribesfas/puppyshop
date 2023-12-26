<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 리스트</title>

      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- fonts -->
      <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
      <!-- font awesome -->
      <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <!--  -->
      <!-- owl stylesheets -->
      <link href="https://fonts.googleapis.com/css?family=Great+Vibes|Poppins:400,700&display=swap&subset=latin-ext" rel="stylesheet">
      <link rel="stylesheet" href="css/owl.carousel.min.css">
      <link rel="stylesoeet" href="css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
</head>
<body>
<%
	ArrayList<Product> productList = productDAO.getAllProducts();
%>


<!-- jewellery  section start -->
      <div class="jewellery_section">
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <div class="container">
                       <h1 class="fashion_taital">SEASON ITEMS </h1>
                     
                     
                     
                     <div class="fashion_section_2">
                        <div class="row">
                        <%
												for (int i = 0; i < productList.size(); i++) {
													Product product = productList.get(i);
									%>
                           <div class="col-lg-4 col-sm-4">
                              <div class="box_main">
								                              	
                                 <h4 class="shirt_text"><%=product.getProduct_name()%></h4>
                                 <p class="price_text">販売価格：
                                    <span style="color: #262626;">￥<%=product.getPrice()%>
                                    
                                    
                                    
                                 </span></p>
                                 	        
                                 <div class="jewellery_img"><img src="<%=product.getProduct_img()%>" alt="이미지가 들어감"></div>
                                 <div class="btn_main">
                                    <div class="buy_bt"><a href="#">Add Cart</a></div>
                                    <div class="seemore_bt"><a href="#">See More</a></div>
                                 </div>
                              </div>
                           </div>
<%	} %>




                      </div>
                     </div>
                  </div>
               </div>









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