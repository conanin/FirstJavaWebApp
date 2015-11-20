<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="com.alf.dao.ItemsDAO,com.alf.entity.Items,java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>">
	<title>Items Overview Page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	   div{
	      float:left;
	      margin: 10px;
	   }
	   div dd{
	      margin:0px;
	      font-size:10pt;
	   }
	   div dd.dd_name
	   {
	      color:blue;
	   }
	   div dd.dd_city
	   {
	      color:#000;
	   }
	</style>
</head>
<body>
<h1>Items Overview</h1>
<hr>
<center>
<table width="750" height="60" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td>
		<%
			ArrayList<Items> items = ( new ItemsDAO()).getAllItems();
			if( items != null && items.size() > 0)
			{
				for( int i = 0; i < items.size(); i ++ )
				{
					Items item = items.get(i);
		%>
		<div>
			<dl>
				<dt >
					<a href="details.jsp?id=<%=item.getId()%>"><img src="images/<%=item.getPicture()%>" height="90" width="120" border="1"/></a>
				</dt>
				<dd class="dd_name" ><%=item.getName() %></dd>
				<dd class="dd_city">Location:<%=item.getCity() %></dd>  
				<dd class="dd_price" >Price: ￥ <%=item.getPrice() %></dd>		
			</dl>
		</div> 
		<!-- End loop up all items -->
		<%	
				} 
			}
		%>
		</td>
	</tr>
</table>
</center>

</body>
</html>