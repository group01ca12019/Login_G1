<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login success google</title>
</head>
<body>

	<%
		String name = (String) request.getParameter("name");
		String email = (String) request.getParameter("email");
	%><br>
	<%=name%>
	<br>
	<%=email%>
	<br>


</body>
</html>