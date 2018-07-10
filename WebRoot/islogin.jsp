<%@page import="model.userTable"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
 userTable user = (userTable)session.getAttribute("user");
 if(user==null)
 {
  %>
  <jsp:forward page="login.jsp"></jsp:forward>
  <% 
  }
 
 %>
