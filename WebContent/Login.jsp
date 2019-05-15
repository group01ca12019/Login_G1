<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="login/login.css">
<!-- icon -->
<link rel="shortcut icon" href="img/home.png">
<style type="text/css">
body {
	background: url("img/bbg.jpg");
}

.btn-login {
	padding: 4px 10px;
	display: -moz-inline-stack;
	display: inline-block;
	zoom: 1;
	*display: inline;
	-webkit-transition: 0.3s;
	-o-transition: 0.3s;
	transition: 0.3s;
	-webkit-border-radius: 100px;
	-moz-border-radius: 100px;
	-ms-border-radius: 100px;
	border-radius: 100px;
	border: 1px solid gray;
	-webkit-box-shadow: 0px 14px 20px -9px rgba(0, 0, 0, 0.75);
	-moz-box-shadow: 0px 14px 20px -9px rgba(0, 0, 0, 0.75);
	box-shadow: 0px 14px 20px -9px rgba(0, 0, 0, 0.75);
}

::-webkit-input-placeholder {
	font-style: italic;
	color: black;
}
.login-form:hover{
background: #e3dddd69;
}
input[type="button"]:HOVER {
	background: red;
}
a:HOVER {
	color: black;
	text-decoration: none;
}
</style>
</head>

<body>
	//1: Hiển thị form login
	<section>
		<div class="container">
			<div class="login-form">
				<h1 style="color: black;" class="btn-login">Login</h1>
				<form action="Login?action=signIn" method="post">
					//2: Nhập email, password
					<div>
						<input type="email" name="email" placeholder="Email" value="" required="required"
							style="border: 2px solid black;">
					</div>
					<div>
						<input type="password" name="pass" placeholder="Password" value="" required="required"
							style="border: 2px solid black;">
					</div>
					<div><p style="color: red;"><%if (request.getAttribute("account") != null) {out.print((String) request.getAttribute("account"));}%></p></div>
					<div>
						<input type="submit" value="Login">
					</div>
					<p style="color: #494444;">
						Do not have an account? <a href="#" style="color: red">Register</a>
					</p>
					<h4>
						<a href="forgot.jsp" style="color: #494444; text-decoration: none">Forgot
							password?</a>
					</h4>
					<div>
						<jsp:include page="loginWithGoogle.jsp"></jsp:include>
					or<span></span>
					 <a
							href="https://www.facebook.com/dialog/oauth?client_id=326255838087127&redirect_uri=https://localhost:8443/LoginFacebook/login-facebook">
							<button class="btn-login" type="button"
								style="width: 84px; height: 25px; background-color: #2E2EFE; color: #FFF">
								<i class="fab fa-facebook"></i>Facebook
							</button>
						</a>
					</div>
				</form>

			</div>

		</div>
	</section>
</body>
</html>
