
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
</head>
<body>

	<%Object p = request.getAttribute("a");
	String a = p.toString();
	%>
	<h3><%=a %></h3>
	<a href="index.html" class="btn btn-primary">Home</a><br><br>
	

</body>
</html>