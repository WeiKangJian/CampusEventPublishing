<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body onload="shownum()">
	<jsp:useBean id="user" class="model.userTable"></jsp:useBean>
	<jsp:useBean id="userservice" class = "Service.userservice"></jsp:useBean>
	<jsp:setProperty property="*" name="user"/>
	<%
//	user.setUsername("123");
//	out.print(user.getUsername());
	if(userservice.regestor(user))
	out.print(" 注册成功,3秒后跳转到登陆界面");
   else
    out.print("注册失败,3秒后跳转到登陆界面");
	 %>
	 	 <script type="text/javascript">
		var i = 3;
		function shownum() {
			i = i - 1;
			document.getElementById("time").innerHTML = i + "秒后自动跳转登陆界面";
			setTimeout('shownum()', 300);
		}
	</script>
	<meta http-equiv="refresh" content="5;url=login.jsp">
  </body>
</html>
