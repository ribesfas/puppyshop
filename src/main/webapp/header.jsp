<%@ page contentType="text/html; charset=UTF-8" %>

   <html lang="ja">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
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
         <div class="logo_section mt-4">
            <div class="container">
               <div class="row justify-content-center align-items-center">
                  <div class="col-sm-4 text-center">
                     <div class="logo"><a href="<%= request.getContextPath() %>/index.jsp"><img src="<%= request.getContextPath() %>/resources/images/logo.png"></a></div>
                  </div>
               </div>
            </div>
         </div>
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
                  <span class="toggle_icon" onclick="openNav()"><img src="<%= request.getContextPath() %>/resources/images/toggle-icon.png"></span>
                  <div class="dropdown">
                     <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">All Category 
                     </button>
                     <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="<%= request.getContextPath() %>/view/product/productTopList.jsp">Top</a>
                        <a class="dropdown-item" href="<%= request.getContextPath() %>/view/product/productOuterList.jsp">Outer</a>
                        <a class="dropdown-item" href="<%= request.getContextPath() %>/view/product/productSuppliesList.jsp">Harness/Acc</a>
                     </div>
                  </div>
                  <div class="main">
                     <!-- Another variation with a button -->
                     <div class="input-group">
                        <input type="text" class="form-control" >
                        <div class="input-group-append">
                           <button class="btn btn-secondary" type="button" style="background-color: #f26522; border-color:#f26522 ">
                           <i class="fa fa-search"></i>
                           </button>
                        </div>
                     </div>
                  </div>
                  <div class="header_box">
                     <div class="lang_box ">
                        <a href="#" title="Language" class="nav-link" data-toggle="dropdown" aria-expanded="true">
                        <img src="<%= request.getContextPath() %>/resources/images/flag-uk.png" alt="flag" class="mr-2 " title="United Kingdom"> KOREA <i class="fa fa-angle-down ml-2" aria-hidden="true"></i>
                        </a>
                        <div class="dropdown-menu ">
                           <a href="#" class="dropdown-item">
                           <img src="<%= request.getContextPath() %>/resources/images/flag-france.png" class="mr-2" alt="flag">
                           JAPAN
                           </a>
                        </div>
                     </div>
                     <div class="login_menu">
                        <ul>
                           <li><a href="#">
                              <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                              <span class="padding_10">cart</span></a>
                           </li>
                           <li>  <% if (session.getAttribute("user_name") != null) { %>
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
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- header section end -->
         <!-- banner section start -->
         <div class="banner_section layout_padding">
            <div class="container">
               <div id="my_slider" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                     <div class="carousel-item active">
                        <div class="row">
                           <div class="col-sm-12">
                              <h1 class="banner_taital">おしゃれをプレゼントする</h1>
                              <div class="buynow_bt"><a href="#">今すぐチェック</a></div>
                           </div>
                        </div>
                     </div>
                     <div class="carousel-item">
                        <div class="row">
                           <div class="col-sm-12">
                              <h1 class="banner_taital">このシーズンならでの</h1>
                              <div class="buynow_bt"><a href="#">今すぐチェック</a></div>
                           </div>
                        </div>
                     </div>
                     <div class="carousel-item">
                        <div class="row">
                           <div class="col-sm-12">
                              <h1 class="banner_taital">ぴったりなファッションをチェック</h1>
                              <div class="buynow_bt"><a href="#">今すぐチェック</a></div>
                           </div>
                        </div>
                     </div>
                  </div>
          
                  </a>
               </div>
            </div>
         </div>
         <!-- banner section end -->
      </div>