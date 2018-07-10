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

<title>My JSP 'mainleft.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/style.css">


</head>

<body bgcolor="#FFC78E">
   <h2>
	<a href="main_right.jsp" target="main_right" style="color: black;">前往活动</a>
	</h2>
	<br>
	<h2>
	<a href="inputstuinfo.jsp" target="main_right" style="color: black;"> 录入个人信息</a>
	</h2>
	<br>
	<h2>
	<a href="modifystuinfo.jsp" target="main_right" style="color: black;"> 查看用户信息(管理员)</a>
	</h2>
	<br>
	<h2>
	<a href="modifyPerson.jsp" target="main_right" style="color: black;"> 修改个人信息</a>
	</h2>
	<br>
	<h2>
	<a href="deletestuinfo.jsp" target="main_right" style="color: black;"> 删除用户信息 (管理员)</a>
	</h2>
	<br>
	<h2>
	<a href="exit.jsp" target="_top" style="color: black;"> 退出</a>
	</h2>
	<br>
</body>
</html>
