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

<title>My JSP 'Main.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
<frameset rows="25%,*">
	<frame src="top.jsp">
	<frameset cols="20%,*">
		<frameset rows="50%,*">
		<frame src="SecondLeft.jsp">
		<frame src="main_left.jsp">
		</frameset>
		<frame src="main_right.jsp" name="main_right">
	</frameset>
</frameset>
<body>
	This is my JSP page.
	<br>
</body>
</html>
