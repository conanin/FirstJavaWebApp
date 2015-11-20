<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import = "java.text.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<table>
<tr>
<td>
<% 
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat( "yyyy年MM月dd日： hh:mm:ss" );
	String output = sdf.format( date );
	out.println( output );
%>
</td>
<td width="200" align="right">
<a href="mailto:gang.yin@hpe.com?subject=test&cc=wen.zou2@hpe.com&body=use mailto sample"><font color="green"><b>Contact US</b></font></a>
</td>
</tr>
</table>