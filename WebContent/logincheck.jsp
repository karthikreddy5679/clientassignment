<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Check</title>
</head>
<body>
<% String username=request.getParameter("username");
String password=request.getParameter("password");
if((username.equals("karthik") && password.equals("reddy"))) {
	session.setAttribute("username",username);
	response.sendRedirect("Welcome.jsp");
	} 
else if((username.equals("vikram") && password.equals("reddy"))) {
	session.setAttribute("uname",username);
	response.sendRedirect("Welcome.jsp");
	}
else response.sendRedirect("errorpage.jsp"); %>
</body>
</html>