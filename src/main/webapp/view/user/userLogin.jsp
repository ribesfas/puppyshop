<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List"%>
<%@ page import="dto.UserDTO"%>
<%@ page import="dao.UserDAO"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
      <!-- basic -->
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
<title>LoginPage</title>
<meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
</head>
	

    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .login-container {
            width: 800px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: calc(100% - 12px);
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        .form-group input[type="submit"] {
            width: 100%;
            padding: 8px;
            border: none;
            border-radius: 3px;
            background-color: #30302e;
            color: white;
            cursor: pointer;
        }
        .form-group input[type="submit"]:hover {
            background-color: #2980b9;
        }
</style>
<body>
<%@ include file="../../header2.jsp"%>
<div class="container mt-5">
 <div class="login-container">
        <h2>Login</h2>
        <form action="/LoginServlet" method="post">
            <div class="form-group">
                <label for="userid">UserID:</label>
                <input type="text" id="userid" name="userid" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Login">
            </div>
        </form>
    </div>
      <a href="userSignUpPage.jsp"><p>회원가입하러가기</p></a>
    </div>
</body>
</html>