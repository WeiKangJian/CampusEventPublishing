<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ page import="model.essary"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <jsp:include page="isSuperUser.jsp"></jsp:include>
<base href="<%=basePath%>">

<title>My JSP 'deletestuinfo.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body background="images/newhead.jpg" style="background-size: cover;">
	<jsp:useBean id="essSer" class="Service.essaryService"></jsp:useBean>
	<%
		List essarys = essSer.queryessary();
		// out.print(stus.size());  
		Iterator iter = essarys.iterator();
	%>
	<table>
		<tr>
			<td style="color: white;">id</td>
			<td style="color: white;">活动名称</td>
			<td style="color: white;">发布人</td>
			<td style="color: white;">日期</td>
			<td style="color: white;"></td>
		</tr>
		<%
			int i = 0;
			while (iter.hasNext()) {
				essary ess = (essary) iter.next();
		%>
		<tr <%if (true) {%> bgcolor="#F0F8FF" <%}%>>
			<td><%=ess.getID()%></td>
			<td><%=ess.getEssary()%></td>
			<td><%=ess.getEssaryName()%></td>
			<td><%=ess.getEssaryDate() %></td>
			<td><a href="deleteEssaryResult.jsp?id=<%=ess.getID()%>">删除</a></td>
		</tr>
		<%
			i++;
			}
		%>

	</table>
</body>
</html>
