<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加学生</title>
</head>
<body>
<script type="text/javascript" src="js/saddcheck.js"></script>
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
<form action="admin_user_execute.jsp" onsubmit="return check(this)" method="post">
<input type="hidden" name="exetype" value="addst" />
<table>
<th>新增学生</th>
<tr>
<td>学生编号:</td><td><input type="text" name="ID" /></td>
</tr>
<tr>
<td>学生姓名:</td><td><input type="text" name="name" /></td>
</tr>
<tr>
<td>学生性别:</td><td><input type="radio" name="gender" value="男" />男</td><td><input type="radio" name="gender" value="女" />女</td>
</tr>
<tr>
<td>入学时间:</td><td><input type="text" name="time" /></td>
</tr>
<tr>
<td>学生专业:</td><td><input type="text" name="major" /></td>
</tr>
<tr>
<td>家庭住址:</td><td><input type="text" name="address" /></td>
</tr>
<tr>
<td>默认密码:</td><td><input type="password" name="pwd" /></td>
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