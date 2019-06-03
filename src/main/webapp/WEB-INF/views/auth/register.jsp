<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Bãi đỗ xe thông minh - Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/authUrl/images/icons/favicon.png"/>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/authUrl/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/authUrl/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/authUrl/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/authUrl/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/authUrl/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/authUrl/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/authUrl/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/authUrl/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/authUrl/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/authUrl/css/main.css">
<!--===============================================================================================-->
<style type="text/css">
#registerForm label.error {
    display: block;
    background: #fff7f7 !important;
    color: #9b369d;
    font-size: 13px;
    font-style: italic;
    padding-left: 24px;
}
</style>
</head>
<body>
	
	<div class="container-login100" style="background-image: url('${pageContext.request.contextPath}/authUrl/images/bg-02.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
			<form id="registerForm" action="${pageContext.request.contextPath}/register" method="post" class="login100-form validate-form">
				<span class="login100-form-title p-b-37">
					Register
				</span>
				<c:if test="${param['error'] eq 'loginErr' }">
						<div class="text-center text-danger">Sai username hoặc password</div>
				</c:if>
				
				<div class="wrap-input100 validate-input m-b-25" data-validate = "Enter email">
          <input class="input100" type="text" name="email" placeholder="email">
          <span class="focus-input100"></span>
        </div>

				<div class="wrap-input100 validate-input m-b-20" data-validate="Enter username">
					<input class="input100" type="text" name="username" placeholder="username">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-25" data-validate = "Enter password">
					<input class="input100" type="password" name="password" placeholder="password" />
					<!-- <span class="focus-input100"></span> -->
				</div>
				
				<div class="wrap-input100 validate-input m-b-25" data-validate = "Enter fullname">
					<input class="input100" type="text" name="fullname" placeholder="fullname">
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input m-b-25" data-validate = "Enter telephone">
					<input class="input100" type="text" name="telephone" placeholder="telephone">
					<span class="focus-input100"></span>
				</div>
				

				<div class="container-login100-form-btn">
					<button class="login100-form-btn">
						Sign Up
					</button>
				</div>

        <br />
				<div class="text-center">
					<a href="${pageContext.request.contextPath}/login" class="txt2 hov1" style="text-decoration: underline;">
						Log in
					</a>
				</div>
				<br />
				<br />
				<br />
				<div class="text-center">
					<a href="#" class="txt1 hov1">
						baixethongminh.com
					</a>
				</div>
			</form>

			
		</div>
	</div>
	
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/authUrl/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/authUrl/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/authUrl/vendor/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/authUrl/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/authUrl/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/authUrl/vendor/daterangepicker/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/authUrl/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/authUrl/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/authUrl/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/authUrl/js/jquery.validate.min.js"></script>
  <script type="text/javascript">
  $(document).ready(function(){
	  $('#registerForm').validate({
	    rules:{
	      "username":{
	        required: true,
	        minlength: 6,
	        maxlength: 32,
	      },
	      "password":{
	        required: true,
	        minlength: 6,
	      },
	      "fullname":{
	        required: true,
	      },
	      "telephone":{
	    	  required: true,
	        digits: true,
	        maxlength:11,
	        minlength:10
	      },
	      "email":{
	        required: true,
	        email: true,
	      }
	    }
	  });
	});
  </script>
</body>
</html>