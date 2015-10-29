<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome come home page</title>
<% request.setCharacterEncoding("utf-8"); 
   request.setAttribute("password", "abc1234d");	
%>
</head>
<body>
 Login Successfully, Welcome home page!<br>
 Welcome, <b><%=request.getParameter("username") %></b><br>
 Password is: <b><%=request.getParameter("password") %></b><br>
 Stored Password is: <b><%=request.getAttribute("password") %></b><br>
 Content Type is: <b><%=request.getContentType() %></b><br>
 Protocol is: <b><%=request.getProtocol() %></b><br>
 AuthType is: <b><%=request.getAuthType() %></b><br>
 Session is: <b><%=request.getSession() %></b><br>
 Local Name is: <b><%=request.getLocalName() %></b><br>
 Local Port is: <b><%=request.getLocalPort() %></b><br>
 Server Name is: <b><%=request.getServerName() %></b><br>
 Request URL is: <b><%=request.getRequestURI() %></b><br>
 Request length is: <b><%=request.getContentLength() %></b><br>
 Request real path is: <b><%=request.getRealPath("dologin.jsp") %></b><br>
 Request context path is: <b><%=request.getContextPath() %></b><br>
 Your favorite is: <br>
 <b><% 
 	if( request.getParameterValues("favorite") != null )
 	{
	 	String[] favorites = request.getParameterValues("favorite");
	 	for( String item: favorites )
	 	{
		 	out.println( item + "<br>");
	 	}
 	}
 %></b>
</body>
</html>