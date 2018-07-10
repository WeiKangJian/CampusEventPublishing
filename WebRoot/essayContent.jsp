<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ page import="Service.essaryService" %>
<%@page import="model.essary" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'essayContent.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/style.css">

  </head>
  
  <body background="images/newhead.jpg" style="background-size: cover;">
  <%
  	request.setCharacterEncoding("GB2312");
  	/*int is =Integer.parseInt(request.getParameter("id")) ;
  	out.print(is);*/
   %>
   <%
   	essaryService ess = new essaryService();
   	essary Theessary = ess.queryEssarybyID(Integer.parseInt(request.getParameter("id")));
    %>
	<h2><% out.print(Theessary.getEssary());%></h2>
	<h3><% out.print(Theessary.getEssaryName());%></h3>
	<a><% out.print(Theessary.getEssaryContent());%></a>
	
  </body>
</html>
