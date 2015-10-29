<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>九九乘法表</title>
<h1>九九乘法表--From Header</h1>
</head>
<body>
<h1>九九乘法表 --From Body</h1>
<%! 
	int rowNo = 9;
	String s = "";
	
	String printMultiTable()
	{
		for( int i = 1; i <= rowNo; i ++ )
		{
			for( int j  = 1; j <= i; j ++ )
			{
				s +=  j + " * " + i + " = " + ( j * i ) + "    ";
			}
			s += "<br>";  //加入换行标签
		}
		
		return s;
	}	
	
%>
<%
	String result = "";
	int xx = 0;
	for( int i = 1; i <= rowNo; i ++ )
	{
		for( int j  = 1; j <= i; j ++ )
		{
			result +=  j + " * " + i + " = " + ( j * i ) + "    ";
		}
		result += "<br>";  //加入换行标签
	}
%>

	Java Code输出<br>
	<% out.println(result);%>  

	
	<br><br>表达式输出：<br>
	<%=printMultiTable()%> 
</body>
</html>