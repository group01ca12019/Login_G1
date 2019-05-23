<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="login/login.css">
<title>Forgot Password</title>
<link rel="shortcut icon" href="img/home.png">
</head>
<style type="text/css">
body {
	background: url("img/bbg.jpg");
}

.login-form:hover {
	background: #e3dddd69;
}

::-webkit-input-placeholder {
	font-style: italic;
	color: black;
}

input[type="button"]:HOVER {
	background: red;
	text-decoration: none;
}

a:HOVER {
	text-decoration: none;
}
</style>
<body>
	<section>
		<div class="container">
			<div class="login-form">
				<h1 style="color: black">Forgot password</h1>
				<form action="Login?action=forgot" method="post">
					<div>
						<input type="email" name="email" placeholder="Email" value=""
							required="required" style="border: 2px solid black;">
					</div>
					<div>
						<input type="password" name="pass" placeholder="New password"
							value="" required="required" style="border: 2px solid black;">
					</div>

					<div>
						<p style="color: red;">
							<%
								if (request.getAttribute("email") != null) {
									out.print((String) request.getAttribute("email"));
								}
							%>
						</p>

					</div>
					<div>
						<input type="submit" value="ok">
					</div>
					<p style="color: #494444">
						Do not have an account? <a href="#" style="color: red">Register</a>
					</p>
					<p style="color: #494444">
						I am already member <a href="login.jsp" style="color: red">Login</a>
					</p>
				</form>

			</div>

		</div>
	</section>
</body>
</html>
