<%@ page language="java" import="java.util.*" pageEncoding="GB2312"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'inputstuinfo.jsp' starting page</title>

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
	<%
		if (session.getAttribute("UserNicheng") != null) {
			RequestDispatcher rd = request.getRequestDispatcher("ERROR.jsp");
			request.setAttribute("error1", "ERROR401");
			rd.forward(request, response);

			return;
		}
	%>
	<center>
		<form action="inputStuInfo_result.jsp" method="post">
			<table bgcolor="#FFC78E">
				<tr>
					<td align="center" bgcolor="#6A6AFF" colspan=3><font
						color=white>BITѧ����Ϣ¼��</font></td>
				</tr>
				<tr>
					<td>�ǳƣ�</td>
					<td><input type="text" size=20 name="nicheng"></td>
					<td>5-12λ�����ַ�</td>
				</tr>
				<tr>
					<td>��ʵ������</td>
					<td><input type="text" size=20 name="truename"></td>
					<td>5-12λ�����ַ�</td>
				</tr>
				<tr>
					<td>�Ա�</td>
					<td><input type="radio" name="xb" checked value="1">��&nbsp;&nbsp;
						<input type="radio" name="xb" value="0">Ů</td>
				</tr>
				<tr>
					<td>�������ڣ�</td>
					<td><input type="text" name="csrq" size=20></td>
					<td>��������1994-12-06</td>
				</tr>
				<tr>
					<td>��ѧרҵ��</td>
					<td><select name="zy">
							<option>�������ѧ�뼼��</option>
							<option selected>ͨ�Ź���</option>
							<option>��������</option>
					</select></td>
				</tr>
				<tr>
					<td>��ѧ�γ̣�</td>
					<td><select name="kc" size=2 multiple="multiple">
							<option>���������</option>
							<option>���ݽṹ</option>
							<option>���ݿ�ԭ��</option>

							<option>����ϵͳ</option>
							<option>���������</option>
							<option>�������</option>
					</select></td>
				</tr>
				<tr>
					<td>ϲ���Ļ����</td>
					<td><input type="checkbox" value="music" name="xq">Լ��Ӱ&nbsp;
						<input type="checkbox" value="book" name="xq">Լѧϰ&nbsp; <input
						type="checkbox" value="web" name="xq">Լ����&nbsp;</td>
				</tr>
				<tr valign="top">
					<td>��ע(�����Ի�μ���Ҫ��)</td>
					<td><textarea rows=3 cols=20 name="bz"></textarea></td>
				</tr>
				<tr>
					<td align="center" colspan="2"><input type="submit"
						value="�ύ">&nbsp;&nbsp; <input type="reset" value="����"></td>
				</tr>
			</table>

		</form>
	</center>
</body>
</html>
