<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,java.sql.*,eduassistemdbquery.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>课程选择</title>
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
<form action="student_course_select_execute.jsp" method="post">
<input type="hidden" name="sID" value="<%=session.getAttribute("onuser")%>"/>
<table>
<th>选择课程</th>
<tr>
<td>课程编号</td><td>课程名称</td><td>开课院系</td><td>授课教师</td><td>学分</td><td>上课地点</td>
</tr>
<%
dbConnection cor=new dbConnection();
String sql="select * from course where inst='"+session.getAttribute("major")+"'";
ResultSet rs=cor.dbQuery(sql);
while(rs.next()) {
%>
	<tr>
	<td><%out.print(rs.getString("ID"));%></td>
	<td><%out.print(rs.getString("name"));%></td>
	<td><%out.print(rs.getString("inst"));%></td>
	<td><%out.print(rs.getString("teacher"));%></td>
	<td><%out.print(rs.getString("credit"));%></td>
	<td><%out.print(rs.getString("address"));%></td>
	<td><input type="checkbox" name="sel" value="<%=rs.getString("ID")%>"/></td>
	</tr>
<%
}
	cor.dbClose();
%>
<tr>
<td><input type="submit" value="确定" /></td><td><input type="reset" value="重置"/></td>
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