<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Facebook</title>
</head>
<body>
	<%
		String id = request.getAttribute("id").toString();
		String name = request.getAttribute("name").toString();
		out.print("Id: " + id);
		out.print("<br/>Name: " + name);
	%>
</body>
</html>