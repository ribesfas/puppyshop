   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

   <head>
      <!-- basic -->
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>PawsWardrobe</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/resources/css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="<%= request.getContextPath() %>/resources/images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- fonts -->
      <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
      <!-- font awesome -->
      <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <!--  -->
      <!-- owl stylesheets -->
      <link href="https://fonts.googleapis.com/css?family=Great+Vibes|Poppins:400,700&display=swap&subset=latin-ext" rel="stylesheet">
      <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/owl.carousel.min.css">
      <link rel="stylesoeet" href="<%= request.getContextPath() %>/resources/css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
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
   </head>      
      
      <div class="banner_bg_main">
         <!-- header top section start -->
         <div class="container">

         </div>
         <!-- header top section start -->
         <!-- logo section start -->
      <!-- ... (기존 코드) ... -->
<div class="logo_toggle_login">
    <div class="toggle_icon" onclick="openNav()">
        <img src="<%= request.getContextPath() %>/resources/images/toggle-icon.png">
    </div>
    <div class="logo">
        <a href="<%= request.getContextPath() %>/index.jsp"><img src="<%= request.getContextPath() %>/resources/images/logo.png" style="width: 150px;"></a>
    </div>
    <div class="login_menu">
        <ul>
            <li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i><span class="padding_10">cart</span></a></li>
            <li> <%-- 세션에 유저 이름이 있는지 확인하고, 있으면 유저 이름으로 표시하고 링크 변경 --%>
            <% if (session.getAttribute("user_name") != null) { %>
                <a href="<%= request.getContextPath() %>/view/user/userInfo.jsp">
                    <i class="fa fa-user" aria-hidden="true"></i>
                    <span class="padding_10">
                        <%= session.getAttribute("user_name") %>
                    </span>
                </a>
            <% } else { %>
                <a href="<%= request.getContextPath() %>/view/user/userLogin.jsp">
                    <i class="fa fa-user" aria-hidden="true"></i>
                    <span class="padding_10">Login</span>
                </a>
            <% } %></li>
        </ul>
    </div>
</div>

<style>
    .logo_toggle_login {
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 10px;
        margin: 0 20px; /* 좌우 여백 설정 */
    }

    .login_menu ul {
        display: flex;
        list-style-type: none;
        margin: 0;
        padding: 0;
    }

    .login_menu li {
        margin-left: 10px;
    }

    .toggle_icon {
        order: -1; /* 아이콘을 왼쪽으로 이동 */
        margin-right: 20px; /* 아이콘과 로고 사이의 간격 설정 */
    }
</style>


         <!-- logo section end -->
         <!-- header section start -->
         <div class="header_section">
            <div class="container">
               <div class="containt_main">
                  <div id="mySidenav" class="sidenav">
                     <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                     <a href="<%= request.getContextPath() %>/index.jsp">Home</a>
                     <a href="<%= request.getContextPath() %>/AboutUS.jsp">About Us</a>
                     <a href="<%= request.getContextPath() %>/view/product/productTopList.jsp">Top</a>
                     <a href="<%= request.getContextPath() %>/view/product/productOuterList.jsp">Outer</a>
                     <a href="<%= request.getContextPath() %>/view/product/productSuppliesList.jsp">Harness/Acc</a>
                     <a href="<%= request.getContextPath() %>/view/servicecenter/servicecenterList.jsp">Service Center</a>
                     <a href="<%= request.getContextPath() %>/view/product/productNewList.jsp">犬具</a>
                     <a href="<%= request.getContextPath() %>/view/product/productSaleList.jsp">SALE</a>
                  </div>
               
                  </div>
                  <div class="main">
                     <!-- Another variation with a button -->
                
               </div>
            </div>
         </div>
         <!-- header section end -->
        
         <!-- banner section end -->
      </div>