<%@page import="model.essary"%>
<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<%
		request.setCharacterEncoding("GB2312");
	%>
	<jsp:useBean id="essaryService" class="Service.essaryService"></jsp:useBean>
	<%  
			String essarys =(String) session.getAttribute("essary");
			essary ess = essaryService.queryStubyNicheng(essarys);
			if(ess==null){
			RequestDispatcher rd = request.getRequestDispatcher("ERROR.jsp");
			request.setAttribute("error3", "ERROR403");
			rd.forward(request, response);
			return;
			}
		//out.print(stu.getId());
		//out.print(stu.getXqs());
	%>
<base href="<%=basePath%>">

<title>My JSP 'modifyOneStu.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body background="images/newhead.jpg" style="background-size: cover;">
	<form action="modifyActivityResult.jsp" method="post" >
		<table bgColor="#c0c0c0" align="center">
		
			<tr>
				<td align="center" bgcolor=#6A6AFF colspan=3><font color=white>活动修改</font></td>
				
			</tr>
			<tr>
				<td>活动发布人：</td>
				<td><input type="text" size=20 name="essaryName"
					value="<%=ess.getEssaryName()%>"></td>
					<td>5-12位任意字符</td>
			</tr>
			<tr>
				<td>活动名称：</td>
				<td><input type="text" size=20 name="essary"
					value="<%=ess.getEssary()%>"></td>
					<td>5-12位任意字符</td>
			</tr>

			<tr>
				<td>活动时间：</td>
				<td><input type="text" name="essaryDate" value="<%=ess.getEssaryDate()%>"
					size=20></td>
					<td>输入样例1994-12-08</td>
			</tr>
			<tr valign="top">
				<td>活动具体内容</td>
				<td><textarea rows=8 cols=19 name="essaryContent"><%=ess.getEssaryContent() %></textarea></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="hidden" name="ID" value="<%=ess.getID()%>"/><input type="submit" value="提交">&nbsp;&nbsp;
					<input type="reset" value="重置"></td>
			</tr>
		</table>

	</form>

</body>
</html>
