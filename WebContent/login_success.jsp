<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Congratulation! Login Successfully!</title>
</head>
<body>
<h1>Congratulation! Login Successfully!</h1>
<%
	request.setCharacterEncoding("utf-8");
	String username = "";
    String password = "";
    String email= request.getParameter("email");
    Cookie[] cookies = request.getCookies();
	if( cookies != null  && cookies.length > 0 )
	{
		for( Cookie c: cookies )
		{
			if( c.getName().equals( "username" ) )
			{
				username = URLDecoder.decode(c.getValue(),"utf-8");
			}
			else if ( c.getName().equals( "password" ))
			{
				password = URLDecoder.decode(c.getValue(),"utf-8" );
			}
		}
	}
	
%>
Welcome <b><font color="green"><%=session.getAttribute("username") %></font></b><br>
Username in cookie: <b><font color="green"><%=username %></font></b><br>
Password in cookie: <b><font color="green"><%=password %></font></b><br>
Email in JSP Param: <b><font color="green"><%=email %></font></b><br>
</body>
</html>