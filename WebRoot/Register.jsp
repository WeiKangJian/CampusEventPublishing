<%@ page language="java" import="java.util.*" contentType="text/html; charset=GB2312" %>
<html>
	<head>
	<title>注册界面</title>
   <link rel="stylesheet" type="text/css" href ="css/style3.css">
	</head> 
	<body>
	<body>
	<center>
		<br> <br> <br> <br> <br> <br> <br>
		<br> <br> <br> <br> <br> <br> <br>
		<form action="toRegister.jsp" name=login>
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
					<td align="center" colspan="2"><input type="submit" value="注册">&nbsp;&nbsp;
						<input type="reset" value="重置"></td>
				</tr>

			</table>
		</form>
		<a href="login.jsp">返回登录界面</a>
	</center>
</body>
</html>