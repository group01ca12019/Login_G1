<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="google-site-verification"
	content="uUcwSBeeqdAC3gOnxo0p5KkIUaK7StNamWynZJPPA84" />
<meta charset="UTF-8">
<title>Index</title>
<link rel="stylesheet" href="login/login.css">
<!-- icon -->
<link rel="shortcut icon" href="img/home.png">
<style type="text/css">
body {
	background: url("img/bbg.jpg");
}

h1 {
	position: relative;
	animation: myAnimation 5s ease-out infinite alternate;
	-moz-animation: myAnimation 5s ease-out infinite alternate;
	-webkit-animation: myAnimation 5s ease-out infinite alternate;
	-o-animation: myAnimation 5s ease-out infinite alternate;
}

@keyframes myAnimation {
	from {left: -100px;
}

to {
	left: 200px;
}

}

/* Hien thi cho Firefox */
@-moz-keyframes myAnimation {
	from {left: -100px;
}

to {
	left: 90px;
}

}

/* Hien thi cho Safari and Chrome */
@-webkit-keyframes myAnimation {
	from {left: -100px;
}

to {
	left: 90px;
}

}

/* Hien thi cho Opera */
@-o-keyframes myAnimation {
	from {left: -100px;
}

to {
	left: 90px;
}

}
input[type="button"]:HOVER {
	background: red;
}

a:HOVER {
	text-decoration: none;
}

.btn-login {
	background: #4009F3;
	font-size:20px;
	width: 25%;
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
</style>
</head>

<body>
	<section>
		<div style="margin-left: 40%; margin-top: 100px;">
			<h1 style="color: #0D39C9; font-size: 40px; font-family: arial;">Welcome</h1>
			<a href="login.jsp"><input type="button" value="Login" class="btn-login" style="margin-left: 8%; color: #FFF"></a>
		</div>
	</section>
</body>
</html>
