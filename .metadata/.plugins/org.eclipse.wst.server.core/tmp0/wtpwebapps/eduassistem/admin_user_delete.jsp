<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
</head>
<body>
<table width="740" border="0">
<tr>
<td colspan="2" style="background-color:#99bbbb;">
<h1>欢迎回来!管理员:<%out.print(session.getAttribute("onuser"));%><a href="index.jsp">退出</a></h1>
</td>
</tr>
<tr valign="top">
<td style="background-color:#ffff99;width:100px;text-align:top;">
<b>菜单</b><br />
<a href="admin_user.jsp">用户管理</a><br />
<a href="admin_bulletin.jsp">公告管理</a><br />
<a href="admin_resource.jsp">资源管理</a>
</td>
<td style="background-color:#EEEEEE;height:200px;width:400px;text-align:top;">
<table>
<tr><td colspan="4">请选择需删除的用户类型:</td></tr>
<tr>
<form action="admin_user_delete.jsp" method="post">
<table>
<tr>
<td>
<select name="type">
<option value="teacher" selected="selected">教师</option>
<option value="student">学生</option>
</select>
</td>
<td><input type="submit" value="确定" /></td>
</tr>
</table>
</form>
</tr>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="background-color:#99bbbb;text-align:center;">
Copyright LittleBo 2016.4</td>
</tr>
</table>
<%
String type=request.getParameter("type");
if(type!=null&&type.equals("teacher"))
	response.sendRedirect("admin_user_delete_teacher.jsp");
if(type!=null&&type.equals("student"))
	response.sendRedirect("admin_user_delete_student.jsp");
%>
</body>
</html>