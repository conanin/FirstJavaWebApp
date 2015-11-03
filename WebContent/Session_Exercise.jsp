<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.text.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Session Object Demo</title>
</head>
<body>
<h1>Session Built-in Object Demo</h1>
<%
	SimpleDateFormat sdf = new SimpleDateFormat( "yyyy年MM月dd日 hh:mm:ss" );
	long date = session.getCreationTime();
	session.setAttribute("Alpha", new Date());
	session.setAttribute("Beta", 1);
	session.setAttribute("Gamma", 3);
	session.setMaxInactiveInterval(5);
%>
Session Creation Time is: <b><%=sdf.format(date) %></b><br>
Session ID is: <b><%=session.getId() %></b><br>
Last Accessed Time is: <b><%=sdf.format(session.getLastAccessedTime()) %></b><br>
Max Inactive Interval of Session is: <b><%=session.getMaxInactiveInterval() %></b><br>
Servlet Context of Session is: <b><%=session.getServletContext() %></b><br>
Session Attribute is below:<br>
<%
	Enumeration<String> attrs = session.getAttributeNames();
	for( Enumeration<String> e = attrs; e.hasMoreElements(); )
	{
		out.println( "<b>" + attrs.nextElement() + "</b><br>");
	}
	
%>
</body>
</html>