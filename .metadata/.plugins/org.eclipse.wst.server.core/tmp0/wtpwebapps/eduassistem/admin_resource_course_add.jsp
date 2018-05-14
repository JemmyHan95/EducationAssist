<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加课程</title>
</head>
<body>
<script type="text/javascript" src="js/caddcheck.js"></script>
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
<form action="admin_resource_course_execute.jsp" onsubmit="return check(this)" method="post">
<input type="hidden" name="exetype" value="addco"/>
<table>
<th>新增课程</th>
<tr>
<td>课程编号:</td><td><input type="text" name="ID" /></td>
</tr>
<tr>
<td>课程名称:</td><td><input type="text" name="name" /></td>
</tr>
<tr>
<td>开课院系:</td><td><input type="text" name="inst" /></td>
</tr>
<tr>
<td>授课教师:</td><td><input type="text" name="teacher" /></td>
</tr>
<tr>
<td>学分:</td><td><input type="text" name="credit" /></td>
</tr>
<tr>
<td>上课地址:</td><td><input type="text" name="address" /></td>
</tr>
<tr>
<td><input type="submit" value="提交" /></td><td><input type="reset" value="重置" /></td>
</tr>
</table>
</form>
</td>
</tr>
<tr>
<td colspan="2" style="background-color:#99bbbb;text-align:center;">
Copyright LittleBo 2016.4</td>
</tr>
</table>
</body>
</html>