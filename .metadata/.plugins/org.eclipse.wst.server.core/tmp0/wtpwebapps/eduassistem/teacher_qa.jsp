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
dbConnection qa=new dbConnection();
String sql="select * from communication where tID='"+session.getAttribute("onuser")+"'";
ResultSet rs=qa.dbQuery(sql);
if(!rs.isBeforeFirst()) {
	out.print("尚未有学生向您提问!");
}
else {
	%>
	<table>
	<tr><td>提问人</td><td>提问时间</td><td>提问内容</td></tr>
	<%
	while(rs.next()) {
		dbConnection st=new dbConnection();
		String tsql="select name from student where ID='"+rs.getString("sID")+"'";
		ResultSet srs=st.dbQuery(tsql);
		srs.next();
		%><tr><td><%out.print(srs.getString(1));%></td>
		<td><%out.print(rs.getString("time"));%></td>
		<td><%out.print(rs.getString("ask"));%></td>
		<td><form action="teacher_qa_reply.jsp" methop="post">
		<input type="hidden" name="sID" value=<%=rs.getString("sID")%> />
		<input type="hidden" name="tID" value=<%=rs.getString("tID")%> />
		<input type="hidden" name="time" value=<%=rs.getString("time")%> />
		<input type="submit" value="回复" onclick="javascript:window.location.href='teacher_qa_reply.jsp';"/>
		</form></td>
	<%
	}
	%>
	</table>
	<%
}
%>
</td>
</tr>
<tr>
<td colspan="2" style="background-color:#99bbbb;text-align:center;">
Copyright LittleBo 2016.4</td>
</tr>
</table>
</body>
</html>