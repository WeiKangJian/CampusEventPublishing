<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@page import = "Service.essaryService" %>
<%@page import = "model.essary" %>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'main_right.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/style2.css">

</head>

<body background="images/newhead.jpg" style="background-size: cover;">
	<%	essaryService a = new essaryService();
		List essarys = a.queryessary();
		// out.print(stus.size());  
		Iterator iter = essarys.iterator();
	%>
	<table align="center">
		<tr>
			<td align="center"><h2 style="color:white;">活动公告</h2></td>
			<td align="center"><h2 style="color:white;">发布人</h2></td>
			<td align="center"><h2 style="color:white;">时间</h2></td>
		</tr>
			<%
			int i = 0;
			while (iter.hasNext()) {
				essary ess = (essary) iter.next();
		%>
		<tr <%if (true) {%> bgcolor="#F0F8FF" <%}%>>
			<td><a href="essayContent.jsp?id=<%=ess.getID()%>" style="color: #0080FF  ;"><%=ess.getEssary()%></a></td>
			<td><%=ess.getEssaryName()%></td>
			<td><%=ess.getEssaryDate()%></td>

		</tr>
		<%
			i++;
			}
		%>

	</table>
</body>
</html>
