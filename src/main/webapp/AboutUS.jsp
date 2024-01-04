   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<head>
    <!-- basic -->

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
    <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="resources/css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="resources/css/responsive.css">
    <!-- fevicon -->
    <link rel="icon" href="images/fevicon.png" type="resources/image/gif" />
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
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
    <link rel="stylesoeet" href="resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
</head>

<body>
      <%@ include file="../../header2.jsp"%>
                
<head>
 
</body>
</html>
            
      <!-- About Us Section -->
      <div class="about_us_section layout_padding">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h1 class="about_taital">▫️会社紹介</h1>
                   <p> 
                       株式会社 wangwanglove :京畿道龍仁市器興区九葛洞江南大路423-2<br>
                       代表取締役 :山﨑賢人<br>
                       相談時間 :平日9:00~18:00<br>
                       事業者登録番号 :012-3456-7890<br>
                    </p>
                </div>
                <div class="col-md-6">
               <!-- <div class="about_img"><img src="images/회사소개.png"></div> 
                </div>-->
            </div>
        </div>
    </div> 
<div class="contact_section layout_padding">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1 class="contact_taital">▫️お越しの道</h1>
                <p class="contact_text">
                    江南大駅2番出口、徒歩5分<br>
                </p>
                <div class="faq-map-container">
                    <div id="kakao-map" style="height: 300px;"></div>
                </div>
                <button onclick="openNewPage()">詳細地図を見る</button>
            </div>
        </div>
    </div>
</div>
<style>
    .about_img {
        float: right;
        margin-left: 20px; 
    }

    .about_img img {
        max-width: 100%; /* 이미지가 부모 요소를 넘어가지 않도록 최대 너비 설정 */
        height: auto;
    }

    .col-md-6 {
        clear: both; /* float 속성 초기화 */
    }
</style>

<!-- Contact Section -->
<div class="contact_section layout_padding">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1 class="contact_taital">▫️連絡所</h1>
                <p class="contact_text">
                    TEL :010-0002-0000<br>
                    FAX :0110-010-1004<br>
                    MALL :wangwanglove@naver.com<br>
                </p>
            </div>
            <div class="col-md-6" id="kakaoMap" style="height: 300px;"></div>
        </div>
    </div>
</div>

<footer>
    <p>&copy; 2023 고객센터. All rights reserved.</p>
</footer>

<!-- 카카오 지도 API 스크립트 -->
<script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=872c3255031b6565ad424cfabc4458a3"></script>

<script>
    // 카카오 지도 초기화
    kakao.maps.load(() => {
        const container = document.getElementById('kakao-map');
        const options = {
            center: new kakao.maps.LatLng(37.5665, 126.9780), // 서울의 위도, 경도
            level: 3,
        };

        const map = new kakao.maps.Map(container, options);
    });
</script>

</html>


      <!-- footer section start -->
            <div class="footer_section layout_padding">
               <div class="container">
                  <div class="footer_logo">wangwanglove</a></div>
                  <div class="input_bt">
                     <input type="text" class="mail_bt" placeholder="Your Email" name="Your Email">
                     <span class="subscribe_bt" id="basic-addon2"><a href="#">Subscribe</a></span>
                  </div>
                  <div class="footer_menu">
                     <ul>
                        <li><a href="#">Best Sellers</a></li>
                        <li><a href="#">Gift Ideas</a></li>
                        <li><a href="#">New Releases</a></li>
                        <li><a href="#">Today's Deals</a></li>
                        <li><a href="#">Customer Service</a></li>
                     </ul>
                  </div>
                  <div class="location_main">
                     Help Line Number:
                     <a href="#">+82-0000-0000</a>
                     <br>
                     Operating Hours: AM 9:00 ~ PM 6:00
                     <br>
                     Lunch Break: PM 12:00 ~ 1:00 (SAT, SUN, HOLIDAY OFF)
                     <br>
                     FAX:08-0000-0000
                     <br>
                     E-MAIL: <a href="mailto:wangwanglove@naver.com">wangwanglove@naver.com</a>
                  </div>
               </div>
            </div>
            <!-- footer section end -->
            <!-- copyright section start -->
            <div class="copyright_section">
               <div class="container">
                  <p class="copyright_text">© 2023 wangwanglove  <a href="https://html.design">Free html  Templates</a></p>
               </div>
            </div>
            <!-- copyright section end -->
            <!-- Javascript files-->
            <script src="js/jquery.min.js"></script>
            <script src="js/popper.min.js"></script>
            <script src="js/bootstrap.bundle.min.js"></script>
            <script src="js/jquery-3.0.0.min.js"></script>
            <script src="js/plugin.js"></script>
            <!-- sidebar -->
            <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
            <script src="js/custom.js"></script>
            <script>
               function openNav() {
                 document.getElementById("mySidenav").style.width = "250px";
               }
               
               function closeNav() {
                 document.getElementById("mySidenav").style.width = "0";
               }
            </script>
         </body>
      </html>
      
</body>
</html>