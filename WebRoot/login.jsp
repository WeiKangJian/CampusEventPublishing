<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>J2EE大作业</title>
<link rel="stylesheet" type="text/css" href="css/style3.css">
</head>
<body>
	<center>
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br> <br> <br> <br> <br> <br>
		<form action="user/loginServlet" name=login>
			<table bgcolor="#FFC78E">
				<tr>
					<td align="center" bgcolor="#6A6AFF" colspan=8><font
						color=white>欢迎来到BIT活动预约系统</font></td>
				</tr>
				<tr>
					<td>用户名</td>
					<td><input type="text" name="username" size="20"></td>
				</tr>
				<tr>
					<td>密码</td>
					<td><input type="text" name="password" size="20"></td>
				</tr>
				<tr>
					<td align="center" colspan="2"><input type="submit" value="登录">&nbsp;&nbsp;
						<input type="reset" value="重置"></td>
				</tr>

			</table>
		</form>
		<a href="Register.jsp">立即注册</a>
	</center>
	<a style="font-size: 40px;">系统说眀：本系统需要注册后使用。一些功能只有系统管理员有权限操作：</a><br>
		<a style="font-size: 40px;">管理员帐号：admin  管理员密码：admin</a><br><br><br><br>
		<a style="font-size: 20px;">因为时间有点赶...系统先是JSP+JavaBean开发完，后期没时间改，只使用了部分Servlet...</a>
		
	
</body>
</html>