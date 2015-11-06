<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sorry! Login Failed!</title>
</head>
<body>
<h1>Sorry! Login Failed!</h1>
The user <b><font color="red"><%=session.getAttribute("username") %></font></b> does not exist!<br>
Or password is not correct!
<a href="login.jsp">Return to Login Page</a><br>
</body>
</html>