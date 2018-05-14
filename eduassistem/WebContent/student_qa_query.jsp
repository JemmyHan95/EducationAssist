<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,java.sql.*,eduassistemdbquery.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言板</title>
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
<%
dbConnection que=new dbConnection();
String sql="select * from communication where sID='"+session.getAttribute("onuser")+"'";
ResultSet rs=que.dbQuery(sql);
if(!rs.isBeforeFirst()) {
	que.dbClose();
	%><tr><td><%out.print("您尚未有过问答记录!");%></td></tr><tr><td><a href="student_qa.jsp">返回</a></td></tr><%
}
else {
	%><tr><td>提问</td><td>教师</td><td>答复</td><td>时间</td><%
	while(rs.next()) {
		dbConnection tque=new dbConnection();
		String tsql="select * from teacher where ID='"+rs.getString("tID")+"'";
		ResultSet trs=tque.dbQuery(tsql);
		%><tr><td><%out.print(rs.getString("ask"));%></td>
		<td><%trs.next();out.print(trs.getString("name"));%></td>
		<td><%String answer=rs.getString("answer");if(answer.equals(""))out.print("尚未回复");else out.print(answer);%></td>
		<td><%out.print(rs.getString("time"));%></td><%
		tque.dbClose();
	}
	que.dbClose();
}
%>
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