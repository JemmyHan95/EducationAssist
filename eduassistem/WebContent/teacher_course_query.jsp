<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,java.sql.*,eduassistemdbquery.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>课程管理</title>
</head>
<body>
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
<%
dbConnection co=new dbConnection();
String csql="select * from course where teacher='"+session.getAttribute("name")+"'";
ResultSet crs=co.dbQuery(csql);
if(crs.isBeforeFirst()) {
	%><table>
	<th>您教授的课程如下:</th>
	<tr><td>课程编号</td><td>课程名称</td><td>开课院系</td><td>学分</td><td>上课地点</td></tr>
	<%
	while(crs.next()) {
		%>
		<tr>
		<td><%out.print(crs.getString("ID"));%></td>
		<td><%out.print(crs.getString("name"));%></td>
		<td><%out.print(crs.getString("inst"));%></td>
		<td><%out.print(crs.getString("credit"));%></td>
		<td><%out.print(crs.getString("address"));%></td>
		</tr>
		<%
	}
	%></table><%
	co.dbClose();
}
else {
	co.dbClose();
	%><script type="text/javascript">alert('您尚未有教授的课程!');top.location="teacher_course.jsp";</script><%
}
%>
</td>
<tr>
<td colspan="2" style="background-color:#99bbbb;text-align:center;">
Copyright LittleBo 2016.4</td>
</tr>
</table>
</body>
</html>