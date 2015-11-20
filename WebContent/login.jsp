<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.net.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<h1>Out Object Demo</h1>
<%--
	out.println( "The page is used for demo out object usage." + "<br>" );
	out.println( "Buffer Size is <b><u>" + out.getBufferSize() + "</u></b><br>" );
	out.println( "Remaining Buffer Size is <b><u>" + out.getRemaining() + "</u></b><br>");
	out.flush();
	out.clearBuffer();
	out.println( "Whether flush buffer zone automatically is <b><u>" + out.isAutoFlush() + "</u></b><br>");
--%>
<%
	request.setCharacterEncoding("utf-8");
	String username = "";
	String password = "";
	Cookie[] cookies = request.getCookies();
	if( cookies != null  && cookies.length > 0 )
	{
		for( Cookie c: cookies )
		{
			if( c.getName().equals( "username" ) )
			{
				username = URLDecoder.decode(c.getValue(), "utf-8");
			}
			else if ( c.getName().equals( "password" ))
			{
				password = URLDecoder.decode(c.getValue(), "utf-8");
			}
		}
	}
%>
<br>
<br>
<!-- <form caption= "Login Caption" name = "loginForm" action="dologin.jsp" method = "post" > -->
<form name = "loginForm" action="dologin.jsp?loginformParam1=alpha" method = "post" >
<h4>Please login first：</h4>
<table title="Login" border="2" >
<tr>
	<td>UserName:</td>
	<td><input type="text" name="username" width="150" value="<%=username%>"></td>
</tr>
<tr>
	<td>Password:</td> 
	<td><input type="password" name="password" width="150" value="<%=password%>"></td>
</tr>
<tr align="center">
	<td colspan="2"><input type="checkbox" name="isUseCookie" checked="checked">Remember me in 3 days.</td>
</tr>
<tr align="center">
	<td colspan="2"><input type="submit" name="login" value="Login"></td>
</tr>
</table>
</form>
<hr>
include指令<%@ include file="date.jsp" %><br><hr>
include动作<jsp:include page="date.jsp" flush="false"/>
</body>
</html>