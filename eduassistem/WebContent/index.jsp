<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎使用方正教学辅导系统!</title>
<style type="text/css">
#login {
font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
text-align:left;
}
</style>
</head>
<body>
<script type="text/javascript" src="js/logincheck.js"></script>
<form action="Login.jsp" onsubmit="return check(this)" method="post">
<table id="login">
<tr>
<td>用户名:</td><td><input type="text" name="name"/></td>
</tr>
<tr>
<td>密码:</td><td><input type="password" name="pwd"/></td>
</tr>
<tr>
<td><input type="radio" name="usertype" value="admin" checked="checked" />管理员</td>
<td><input type="radio" name="usertype" value="teacher" />教师</td>
<td><input type="radio" name="usertype" value="student" />学生</td>
</tr>
<tr>
<td><input type="submit" value="登录" /></td><td><input type="reset" value="重置" /></td>
</tr>
</table>
</form>
</body>
</html>