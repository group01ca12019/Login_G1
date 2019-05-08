<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id"
	content="941522555947-3ej3srtd6g8rapqepmrth164ria1il5u.apps.googleusercontent.com">
<title>Success</title>
<link rel="stylesheet" href="login/login.css">
<!-- icon -->
<link rel="shortcut icon" href="img/home.png">
<style type="text/css">
body {
	background: url("img/bbg.jpg");
}
.btn-login {
	background: #4634EF;
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
	border: 1px solid #01DFD7;
	-webkit-box-shadow: 0px 14px 20px -9px rgba(0, 0, 0, 0.75);
	-moz-box-shadow: 0px 14px 20px -9px rgba(0, 0, 0, 0.75);
	box-shadow: 0px 14px 20px -9px rgba(0, 0, 0, 0.75);
}
h1 {
	position: relative;
	animation: myAnimation 5s ease-out infinite alternate;
	-moz-animation: myAnimation 5s ease-out infinite alternate;
	-webkit-animation: myAnimation 5s ease-out infinite alternate;
	-o-animation: myAnimation 5s ease-out infinite alternate;
}

@keyframes myAnimation {
	from {left: -100px;}
	to {left: 90px;}
}

/* Hien thi cho Firefox */
@-moz-keyframes myAnimation {
	from {left: -100px;}
	to {left: 90px;}
}

/* Hien thi cho Safari and Chrome */
@-webkit-keyframes myAnimation {
	from {left: -100px;}
to {left: 90px;}
}

/* Hien thi cho Opera */
@-o-keyframes myAnimation {
	from {left: -100px;}
to {left: 90px;}
}
a{
font-size: 20px;
text-decoration: none;
color: #FFF;
}
button:HOVER {
	background: #F72828;
	border: #F72828;
}
</style>

<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id" content="941522555947-3ej3srtd6g8rapqepmrth164ria1il5u.apps.googleusercontent.com">
</head>

<body>
	<%
		String s = (String) session.getAttribute("signIn");
		if (s == null || s.equals("")) {
	%>
	<jsp:forward page="login.jsp"></jsp:forward>

	<%
		}

		else {
	%>
	<div>
	<button type="button" class="btn-login" style="margin-top: 50px; margin-left: 1200px;"><a href="LogOut">Log Out</a></button>
	</div>
	<section>
		<div style="margin-left: 40%">
				<h1 style="color: #0D39C9; font-size: 40px; font-family: arial;">Login success</h1>
		</div>
	</section>

	<%
		}
	%>
</body>
</html>