<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'modifyOneStu_result.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/white.css">

  </head>
    <body onload="shownum()" background="images/newhead.jpg" style="background-size: cover;">
    <%request.setCharacterEncoding("GB2312"); %>
   <jsp:useBean id="stu" class="model.stuInfo"></jsp:useBean>
  <jsp:setProperty property="*" name="stu"/>
    <jsp:useBean id="stuSer" class="Service.stuInfoService"></jsp:useBean>
  <%  
  
  /*out.print(stu.getNicheng());
  out.print(stu.getKcs());
  out.print(stu.getXqs());
  out.print(stu.getId());*/
   %> 
   <%
   
   if(stuSer.updateStu(stu))
   out.print("成功!，界面将在5秒后自动跳转");
   else
   out.print("失败，检查你的输入");
    %>
    	 <script type="text/javascript"> 
	var i = 3; function shownum(){ 
	i=i-1; document.getElementById("time").innerHTML=i+"秒后自动跳转登陆界面";
	setTimeout('shownum()',300); } 
</script>
	<meta http-equiv="refresh" content ="5;url=main_right.jsp" >
  </body>
</html>
