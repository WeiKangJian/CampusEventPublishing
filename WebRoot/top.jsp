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
    <td><img  src="images/ͷ��.png" width="50" height="40"></td>
    <td><a href="" style="color: black;"><%out.print(use.getUsername()); %></a></td>
    </table>
  <h1 align="center" style="color:orange;font-size:42px;" >BIT�ԤԼϵͳ</h1>
  <marquee><h3 style="color: white;">��ӭ<%out.print(use.getUsername()); %>���ι��ҵ�J2EE����ҵ</h3></marquee>
  </body>
</html>
