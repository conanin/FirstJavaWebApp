<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%-- 
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
--%>
	<jsp:useBean id="myUser" class="com.alf.entity.User"  scope="page"/>
	<jsp:useBean id="userDao" class="com.alf.dao.UserDao"  scope="page"/>
	<jsp:setProperty property="*" name="myUser"/>
	<%
		request.setCharacterEncoding("utf-8");
		session.setAttribute("username", myUser.getUsername()); 
	%>
	<h1>Set Property Action Element</h1>
	<%
		if( userDao.userLogin(myUser))
		{
			request.getRequestDispatcher("login_success.jsp").forward(request, response);
		}
		else
		{
			response.sendRedirect("login_failure.jsp");
		}
	%>
	
	<hr>
<%--
	<!-- Way One: Match all attributes automatically according to form.  -->
 
	<jsp:setProperty name="myUser" property="*"/>
	username: <%=myUser.getUsername() %><br>
	password: <%=myUser.getPassword() %><br>
	email: <%=myUser.getEmail() %>

	<!--  Way Two: Match partial attributes automatically according to form.  -->
	<jsp:setProperty name="myUser" property="username"/>
	username: <%=myUser.getUsername() %><br>
	password: <%=myUser.getPassword() %><br>
	email: <%=myUser.getEmail() %>

	<!--  Way Three: Match specific attributes manually.  -->
	<jsp:setProperty name="myUser" property="username" value="adminA"/>
	<jsp:setProperty name="myUser" property="password" value="adminB"/>
	username: <%=myUser.getUsername() %><br>
	password: <%=myUser.getPassword() %><br>
	email: <%=myUser.getEmail() %>
--%>

	<!--  Way Four: Pass specific attributes through URL parameter.  -->
	<jsp:setProperty name="myUser" property="username" />
	<jsp:setProperty name="myUser" property="password" />
	<jsp:setProperty name="myUser" property="email" param="loginformParam1"/>
<%-- 
	<!-- Classic JSP expression to get value. -->
	username: <%=myUser.getUsername() %><br>
	password: <%=myUser.getPassword() %><br>
	email: <%=myUser.getEmail() %>
--%>
	<!-- JSP getProperty way to get value. -->
	username from getProperty: <jsp:getProperty name="myUser" property="username"/><br>
	username from getProperty: <jsp:getProperty name="myUser" property="password"/><br>
	username from getProperty: <jsp:getProperty name="myUser" property="email"/><br>
</body>
</html>