<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,java.sql.*,eduassistemdbquery.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增提问</title>
</head>
<body>
<script type="text/javascript" src="js/sqaddcheck.js"></script>
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
<form action="student_qa_ask_execute.jsp" onsubmit="retrun check(this)" method="post">
<%
dbConnection te=new dbConnection();
String tsql="select * from teacher where inst='"+session.getAttribute("major")+"'";
ResultSet trs=te.dbQuery(tsql);
%>
<table>
<th>新增提问</th>
<tr>
<td>提问时间:</td><td><input type="text" name="time" /></td>
</tr>
<tr>
<td>提问教师:</td>
<td>
<table>
<%
while(trs.next()) {
%>
<tr>
<td><%out.print(trs.getString("name"));%></td>
<td><input type="radio" name="teacher" value="<%=trs.getString("ID")%>"/></td>
</tr>
<%
}
te.dbClose();
%>
</table>
</td>
</tr>
<tr>
<td>提问内容:</td><td><input type="text" name="ask" /></td>
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