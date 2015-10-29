<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.*" %>
<%
	response.setContentType("text/html; charset=utf-8");
	out.println("<h2>response built-in object</h2><br>");
	//if built-in out object does not flush, response PrintWriter will work prior to the built-in out object.
	//out.flush();
	PrintWriter pw = response.getWriter();
	pw.println( " The message is from response PrintWriter object.<br> " );
	response.sendRedirect("dologin.jsp");
%>
