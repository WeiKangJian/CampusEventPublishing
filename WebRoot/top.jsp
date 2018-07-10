<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%@ page import = "model.userTable" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>


  </head>
  <%
  	userTable use =(userTable) session.getAttribute("user");
   %>
  <body background="images/head.jpg">
  <table style="background-color: gray;">
  	<tr >
    <td><img  src="images/头像.png" width="50" height="40"></td>
    <td><a href="" style="color: black;"><%out.print(use.getUsername()); %></a></td>
    </table>
  <h1 align="center" style="color:orange;font-size:42px;" >BIT活动预约系统</h1>
  <marquee><h3 style="color: white;">欢迎<%out.print(use.getUsername()); %>来参观我的J2EE大作业</h3></marquee>
  </body>
</html>
