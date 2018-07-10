<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'inputActivity_result.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/white.css">
  </head>

  <body onload="shownum()"  background="images/newhead.jpg" style="background-size: cover;">

	<%
		request.setCharacterEncoding("GB2312");
	%>
	<jsp:useBean id="essary" class="model.essary"></jsp:useBean>
	<jsp:setProperty property="*" name="essary" />
	<jsp:useBean id="essaryService" class="Service.essaryService"></jsp:useBean>

	<%
		/* out.print(stuInfo.getNicheng());
		out.print(stuInfo.getXb());
		out.print(stuInfo.getCsrq());
		out.print(stuInfo.getKcs());
		out.print(stuInfo.getXqs()); 
		out.print(stuInfo.getXq());
		out.print(stuInfo.getXqs()); */
	%>
	<%
		if (essaryService.addessary(essary)) {
			out.print("成功，界面将在5秒后跳转");
			session.setAttribute("essary", essary.getEssary());
			
		} else
			out.print("失败，请检查你的输入");
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
