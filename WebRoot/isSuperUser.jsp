<%@page import="model.userTable"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
 userTable user = (userTable)session.getAttribute("user");
 if(!user.getUsername().equals("admin"))
 {
  %>
  <jsp:forward page="NoAdmit.jsp"></jsp:forward>
  <% 
  }
 
 %>
