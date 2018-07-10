<%@page import="model.stuInfo"%>
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
	<%
		request.setCharacterEncoding("GB2312");
	%>
	<jsp:useBean id="stuSer" class="Service.stuInfoService"></jsp:useBean>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		out.print(id);
		stuInfo stu = stuSer.queryStubyID(id);
		//out.print(stu.getId());
		//out.print(stu.getXqs());
	%>
	<form action="modifyOneStu_result.jsp" method="post">
		<table bgColor="#c0c0c0" align="center">
		
			<tr>
				<td align="center" bgcolor=#6A6AFF colspan=3><font color=white>用户信息修改</font></td>
			</tr>
			<tr>
				<td>昵称：</td>
				<td><input type="text" size=20 name="nicheng"
					value="<%=stu.getNicheng()%>"></td>
					<td>5-12位任意字符</td>
			</tr>
			<tr>
				<td>真实姓名：</td>
				<td><input type="text" size=20 name="truename"
					value="<%=stu.getTruename()%>"></td>
					<td>5-12位任意字符</td>
			</tr>
			<tr>
				<td>性别</td>
				<td><input type="radio" name="xb" <%if (stu.getXb() == 1) {%>
					checked <%}%> value="1">男&nbsp;&nbsp; <input type="radio"
					name="xb" <%if (stu.getXb() == 0) {%> checked <%}%> value="0">女</td>
			</tr>
			<tr>
				<td>出生日期：</td>
				<td><input type="text" name="csrq" value="<%=stu.getCsrq()%>"
					size=20></td>
				<td>输入格式样例1992-1-05</td>
			</tr>
			<tr>
				<td>所学专业：</td>
				<td><select name="zy">
						<option <% try {if (stu.getZy().equals("计算机科学与技术")) {%> selected <%}%>>计算机科学与技术</option>
						<option <%if (stu.getZy().equals("通信工程")) {%> selected <%}%>>通信工程</option>
						<option <%if (stu.getZy().equals("电气工程")) {%> selected <%}}catch(Exception e){
						//out.print(e);
						}%>>电气工程</option>
				</select></td>
			</tr>
			<tr>
				<td>所学课程：</td>
				<td><select name="kc" size=2 multiple="multiple">
						<option
							<%String kc[] = stu.getKc();
			for (int i = 0; i < kc.length; i++) {
				if (kc[i].equals("计算机导论")) {%>
							selected <%break;
				}
			}%>>计算机导论</option>
						<option
							<%for (int i = 0; i < kc.length; i++) {
				if (kc[i].equals("数据结构")) {%>
							selected <%break;
				}
			}%>>数据结构</option>
						<option
							<%//String kc[] = stu.getKc();
			for (int i = 0; i < kc.length; i++) {
				if (kc[i].equals("数据库原理")) {%>
							selected <%break;
				}
			}%>>数据库原理</option>

						<option
							<%//String kc[] = stu.getKc();
			for (int i = 0; i < kc.length; i++) {
				if (kc[i].equals("操作系统")) {%>
							selected <%break;
				}
			}%>>操作系统</option>
						<option
							<%//String kc[] = stu.getKc();
			for (int i = 0; i < kc.length; i++) {
				if (kc[i].equals("计算机网络")) {%>
							selected <%break;
				}
			}%>>计算机网络</option>
						<option
							<%//String kc[] = stu.getKc();
			for (int i = 0; i < kc.length; i++) {
				if (kc[i].equals("软件工程")) {%>
							selected <%break;
				}
			}%>>软件工程</option>
				</select></td>
			</tr>
			<tr>
				<td>兴趣</td>
				<td><input type="checkbox" value="music" name="xq"
					<%String xq[] = stu.getXq();
			for (int i = 0; i < xq.length; i++) {
				if (xq[i].equals("music")) {%>
					checked <%break;
				}
			}%>>约电影&nbsp; <input
					type="checkbox" value="book" name="xq"
					<%//String xq[] = stu.getXq();
			for (int i = 0; i < xq.length; i++) {
				if (xq[i].equals("book")) {%>
					checked <%break;
				}
			}%>>约学习&nbsp; <input
					type="checkbox" value="web" name="xq"
					<%//String xq[] = stu.getXq();
			for (int i = 0; i < xq.length; i++) {
				if (xq[i].equals("web")) {%>
					checked <%break;
				}
			}%>>约上网&nbsp;</td>
			</tr>
			<tr valign="top">
				<td>备注</td>
				<td><textarea rows=3 cols=20 name="bz"><%=stu.getBz() %></textarea></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="hidden" name="id" value="<%=stu.getId()%>"/><input type="submit" value="提交">&nbsp;&nbsp;
					<input type="reset" value="重置"></td>
			</tr>
		</table>

	</form>

</body>
</html>
