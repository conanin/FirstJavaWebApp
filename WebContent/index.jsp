<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ page import = "java.text.*,com.alf.entity.*" %>
<!-- Should visible in client side. -->
<%-- Not visible in client side. --%>
<%! 
	String welcome = "Hello, World!"; 
	int add( int a, int b )
	{
		return a + b;
	}
	

%>
<%
	// Java Single Line Comments, not visible in client side
	/* Java Multi Line Comments, not visible in client side.*/
	out.println( "Now is " + new Date() );
	SimpleDateFormat sdf = new SimpleDateFormat( "yyyy年MM月dd日hh时mm分ss秒" );
	String chineseDate = sdf.format(new Date());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Welcome(欢迎) to Conanin Home</title>
</head>
<body>
<h1>Welcome欢迎 to Conanin Home</h1>
你好，<%=welcome%> <br>
中国日期是： <%=chineseDate %>
3 + 5 = <%=add(3,5) %> 
<% 
	User user = new User();
	user.setUsername("conanin");
	user.setPassword("abc123");
	user.setEmail("gang.yin@hpe.com");
%>
<h2>Java Bean by java class initialization.</h2>
<br>username is: <%=user.getUsername() %>
<br>password is: <%=user.getPassword() %>
<br>email is: <%=user.getEmail() %>
<jsp:useBean id="user2" class="com.alf.entity.User" scope="page" />
<h2>Java Bean by action element.</h2>
<br>username is: <%=user2.getUsername() %>
<br>password is: <%=user2.getPassword() %>
<br>email is: <%=user2.getEmail() %>
<br><br><a title="九九乘法表" href="exercise.jsp" >进入九九乘法表页面</a>
<br><a title="Out Usage Demo" href="Out_Exercise.jsp" >Out Object Usage</a>
<br><a title="Out Usage Demo" href="response.jsp" >Response Object Usage</a>
<br><a title="Session built-in object Usage Demo" href="Session_Exercise.jsp" >Session built-in object Usage Demo</a>
</body>
</html>