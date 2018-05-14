<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更改密码</title>
</head>
<body>
<script type="text/javascript" src="js/pwdcheck.js"></script>
<table width="740" border="0">
<tr>
<td colspan="2" style="background-color:#99bbbb;">
<h1>欢迎回来!<%out.print(session.getAttribute("name"));%>老师<a href="index.jsp">退出</a></h1>
</td>
</tr>
<tr valign="top">
<td style="background-color:#ffff99;width:100px;text-align:top;">
<b>菜单</b><br />
<a href="teacher_info.jsp">信息维护</a><br />
<a href="teacher_course.jsp">课程管理</a><br />
<a href="teacher_fileupload.jsp">教案上传</a><br />
<a href="teacher_bulletinque.jsp">公告查询</a><br />
<a href="teacher_qa.jsp">留言板</a>
</td>
<td style="background-color:#EEEEEE;height:200px;width:400px;text-align:top;">
<form action="teacher_info_execute.jsp" onsubmit="return check(this)" method="post">
<input type="hidden" name="exetype" value="cpd" />
<table>
<tr><td>请输入新密码:</td></tr>
<tr><td><input type="password" name="newpwd" /></td></tr>
<tr><td><input type="submit" value="提交"/></td><td><input type="reset" value="重置"/></td></tr>
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