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
				<td align="center" bgcolor=#6A6AFF colspan=3><font color=white>�û���Ϣ�޸�</font></td>
			</tr>
			<tr>
				<td>�ǳƣ�</td>
				<td><input type="text" size=20 name="nicheng"
					value="<%=stu.getNicheng()%>"></td>
					<td>5-12λ�����ַ�</td>
			</tr>
			<tr>
				<td>��ʵ������</td>
				<td><input type="text" size=20 name="truename"
					value="<%=stu.getTruename()%>"></td>
					<td>5-12λ�����ַ�</td>
			</tr>
			<tr>
				<td>�Ա�</td>
				<td><input type="radio" name="xb" <%if (stu.getXb() == 1) {%>
					checked <%}%> value="1">��&nbsp;&nbsp; <input type="radio"
					name="xb" <%if (stu.getXb() == 0) {%> checked <%}%> value="0">Ů</td>
			</tr>
			<tr>
				<td>�������ڣ�</td>
				<td><input type="text" name="csrq" value="<%=stu.getCsrq()%>"
					size=20></td>
				<td>�����ʽ����1992-1-05</td>
			</tr>
			<tr>
				<td>��ѧרҵ��</td>
				<td><select name="zy">
						<option <% try {if (stu.getZy().equals("�������ѧ�뼼��")) {%> selected <%}%>>�������ѧ�뼼��</option>
						<option <%if (stu.getZy().equals("ͨ�Ź���")) {%> selected <%}%>>ͨ�Ź���</option>
						<option <%if (stu.getZy().equals("��������")) {%> selected <%}}catch(Exception e){
						//out.print(e);
						}%>>��������</option>
				</select></td>
			</tr>
			<tr>
				<td>��ѧ�γ̣�</td>
				<td><select name="kc" size=2 multiple="multiple">
						<option
							<%String kc[] = stu.getKc();
			for (int i = 0; i < kc.length; i++) {
				if (kc[i].equals("���������")) {%>
							selected <%break;
				}
			}%>>���������</option>
						<option
							<%for (int i = 0; i < kc.length; i++) {
				if (kc[i].equals("���ݽṹ")) {%>
							selected <%break;
				}
			}%>>���ݽṹ</option>
						<option
							<%//String kc[] = stu.getKc();
			for (int i = 0; i < kc.length; i++) {
				if (kc[i].equals("���ݿ�ԭ��")) {%>
							selected <%break;
				}
			}%>>���ݿ�ԭ��</option>

						<option
							<%//String kc[] = stu.getKc();
			for (int i = 0; i < kc.length; i++) {
				if (kc[i].equals("����ϵͳ")) {%>
							selected <%break;
				}
			}%>>����ϵͳ</option>
						<option
							<%//String kc[] = stu.getKc();
			for (int i = 0; i < kc.length; i++) {
				if (kc[i].equals("���������")) {%>
							selected <%break;
				}
			}%>>���������</option>
						<option
							<%//String kc[] = stu.getKc();
			for (int i = 0; i < kc.length; i++) {
				if (kc[i].equals("�������")) {%>
							selected <%break;
				}
			}%>>�������</option>
				</select></td>
			</tr>
			<tr>
				<td>��Ȥ</td>
				<td><input type="checkbox" value="music" name="xq"
					<%String xq[] = stu.getXq();
			for (int i = 0; i < xq.length; i++) {
				if (xq[i].equals("music")) {%>
					checked <%break;
				}
			}%>>Լ��Ӱ&nbsp; <input
					type="checkbox" value="book" name="xq"
					<%//String xq[] = stu.getXq();
			for (int i = 0; i < xq.length; i++) {
				if (xq[i].equals("book")) {%>
					checked <%break;
				}
			}%>>Լѧϰ&nbsp; <input
					type="checkbox" value="web" name="xq"
					<%//String xq[] = stu.getXq();
			for (int i = 0; i < xq.length; i++) {
				if (xq[i].equals("web")) {%>
					checked <%break;
				}
			}%>>Լ����&nbsp;</td>
			</tr>
			<tr valign="top">
				<td>��ע</td>
				<td><textarea rows=3 cols=20 name="bz"><%=stu.getBz() %></textarea></td>
			</tr>
			<tr>
				<td align="center" colspan="2"><input type="hidden" name="id" value="<%=stu.getId()%>"/><input type="submit" value="�ύ">&nbsp;&nbsp;
					<input type="reset" value="����"></td>
			</tr>
		</table>

	</form>

</body>
</html>
