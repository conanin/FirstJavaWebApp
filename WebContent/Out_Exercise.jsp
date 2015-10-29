<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<h1>Out Object Demo</h1>
<%
	out.println( "The page is used for demo out object usage." + "<br>" );
	out.println( "Buffer Size is <b><u>" + out.getBufferSize() + "</u></b><br>" );
	out.println( "Remaining Buffer Size is <b><u>" + out.getRemaining() + "</u></b><br>");
	out.flush();
	out.clearBuffer();
	out.println( "Whether flush buffer zone automatically is <b><u>" + out.isAutoFlush() + "</u></b><br>");
%>
<br>
<br>
<form caption= "Login Caption" name = "loginForm" action="dologin.jsp" method = "post" >
<h4>Please login first：</h4>
<table title="Login" border="2" >
<tr>
	<td>E-mail:</td> 
	<td><input type="email" name="email" width=autofixedwidth></td>
</tr>
<tr>
	<td>UserName:</td>
	<td><input type="text" name="username" width="150"></td>
</tr>
<tr>
	<td>Password:</td> 
	<td><input type="password" name="password" width="150"></td>
</tr>
<tr>
	<td>Favorite:</td> 
	<td><input type="checkbox" name="favorite" value="Alpha">Alpha<br>
	<input type="checkbox" name="favorite" value="Beta">Beta<br>
	<input type="checkbox" name="favorite" value="Gamma">Gamma<br>
	<input type="checkbox" name="favorite" value="Delta">Delta</td>
</tr>
<tr align="center">
	<td colspan="2"><input type="submit", name="login" value="Login"></td>
</tr>
</table>
</form>
<br>
<a href="dologin.jsp?username=自强">测试URL传参数</a>
</body>
</html>