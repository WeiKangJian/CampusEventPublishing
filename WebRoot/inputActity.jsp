<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'inputActity.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,kseyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body background="images/newhead.jpg" style="background-size: cover;">
	<center>
		<form action="inputActivity_result.jsp" method="post">
			<table bgcolor="#FFC78E">
				<tr>
					<td align="center" bgcolor="#6A6AFF" colspan=3><font
						color=white>活动发布</font></td>
				</tr>
				<tr>
					<td>活动发布人：</td>
					<td><input type="text" size=20 name="essaryName"></td>
					<td>5-12位任意字符</td>
				</tr>
				<tr>
					<td>活动名称：</td>
					<td><input type="text" size=20 name="essary"></td>
					<td>5-12位任意字符</td>
				</tr>
				<tr>
					<td>活动时间：</td>
					<td><input type="text" size=20 name="essaryDate"></td>
					<td>输入格式：2017-12-25</td>
				</tr>
				<tr>
					<td>活动具体内容：</td>
					<td><textarea rows=8 cols=19 name="essaryContent"></textarea></td>
				</tr>
				<tr>
					<td align="center" colspan="2"><input type="submit" value="提交">&nbsp;&nbsp;
						<input type="reset" value="重置"></td>
				</tr>
			</table>

		</form>
	</center>
</body>
</html>
