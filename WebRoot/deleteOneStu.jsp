<%@page import="model.stuInfo"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'deleteOneStu.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/white.css">

</head>

<body onload="shownum()" background="images/newhead.jpg" style="background-size: cover;">
	<jsp:useBean id="stuSer" class="Service.stuInfoService"></jsp:useBean>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		stuInfo stu = stuSer.queryStubyID(id);
		out.print(stu.getId());
		if (stuSer.deleteStu(id))
			out.print("成功，界面将在五秒后跳转");
		else
			out.print("失败，请联系北理管理员");
	%>
	<script type="text/javascript">
		var i = 3;
		function shownum() {
			i = i - 1;
			document.getElementById("time").innerHTML = i + "秒后自动跳转登陆界面";
			setTimeout('shownum()', 300);
		}
	</script>
	<meta http-equiv="refresh" content="5;url=main_right.jsp">
</body>
</html>
