<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<% 
   String path = request.getContextPath();
   request.setCharacterEncoding("utf-8"); 
   String username = "";
   String password = "";
   username = request.getParameter("username");
   password = request.getParameter("password");
   session.setAttribute("username", username);
   if( "admin".equals(username) && "admin".equals( password ))
   {
	   request.getRequestDispatcher("login_success.jsp").forward(request, response);
   }
   else
   {
	   response.sendRedirect( "login_failure.jsp" );
   }
%>
</body>
</html>