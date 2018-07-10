<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'SecondLeft.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>

<body bgcolor="#FFC78E">
	<h2>
		<a href="main_right.jsp" style="color: black;" target="main_right">活动首页</a>
	</h2>
	<br>
	<h2>
		<a href="inputActity.jsp" style="color: black;" target="main_right">发布活动</a>
	</h2>
	<br>
	<h2>
		<a href="modifyActivity.jsp" style="color: black;" target="main_right">活动变更</a>
	</h2>
	<br>
	<h2>
		<a href="deleteessary.jsp" style="color: black;" target="main_right">活动撤销</a>
	</h2>
</body>
</html>
