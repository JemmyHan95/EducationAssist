<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信息维护</title>
</head>
<body>
<table width="740" border="0">
<tr>
<td colspan="2" style="background-color:#99bbbb;">
<h1>欢迎回来!<%out.print(session.getAttribute("name"));%>同学<a href="index.jsp">退出</a></h1>
</td>
</tr>
<tr valign="top">
<td style="background-color:#ffff99;width:100px;text-align:top;">
<b>菜单</b><br />
<a href="student_info.jsp">信息维护</a><br />
<a href="student_course.jsp">课程管理</a><br />
<a href="student_filedownload.jsp">教案下载</a><br />
<a href="student_bulletinque.jsp">公告查询</a><br />
<a href="student_qa.jsp">留言板</a>
</td>
<td style="background-color:#EEEEEE;height:200px;width:400px;text-align:top;">
<table>
<tr><td><a href="student_info_query.jsp">信息查询</a></td></tr>
<tr><td><a href="student_info_changepwd.jsp">更改密码</a></td></tr>
<tr><td><a href="student_info_changeads.jsp">更改住址</a></td></tr>
</table>
</td>
</tr>
<tr>
<td colspan="2" style="background-color:#99bbbb;text-align:center;">
Copyright LittleBo 2016.4</td>
</tr>
</table>
</body>
</html>