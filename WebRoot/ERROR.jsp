<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ERROR.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/white.css">

  </head>
  
  <body background="images/newhead.jpg" style="background-size: cover;">
  <script type="text/javascript" src="JS/MyjsStyile.js" charset="gb2312"></script>
  <h1> 错误<%
  if(request.getAttribute("error1")!=null)
  out.print(request.getAttribute("error1"));
    if(request.getAttribute("error2")!=null)
  out.print(request.getAttribute("error2"));
  if(request.getAttribute("error3")!=null)
  out.print(request.getAttribute("error3"));
  %></h1> <br>
  <h2>ERROR401 您的信息已经存在,要修改请<a href="modifyPerson.jsp"> 前往修改界信息面</a></h2>
  <h2>ERROR402 您还没录入信息，不能修改请<a href="inputstuinfo.jsp">前往录入信息界面</a></h2>
   <h2>ERROR403 您还没录入 活动，不能修改请<a href="inputActity.jsp">前往录入活动界面</a></h2>

  </body>
</html>
