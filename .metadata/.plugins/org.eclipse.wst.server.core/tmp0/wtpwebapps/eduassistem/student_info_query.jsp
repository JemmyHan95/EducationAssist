<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,java.sql.*,eduassistemdbquery.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>信息查询</title>
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
<tr><th>您的个人信息如下</th></tr>
<tr><td>姓名</td><td>性别</td><td>入学时间</td><td>专业</td><td>地址</td></tr>
<%
dbConnection que=new dbConnection();
String sqls="select * from student where ID='"+session.getAttribute("onuser")+"'";
ResultSet rs=que.dbQuery(sqls);
while(rs.next()) {
%><tr><td><%
	out.print(rs.getString("name"));
%></td><td><%
	out.print(rs.getString("gender"));
%></td><td><%
	out.print(rs.getString("time"));
%></td><td><%
	out.print(rs.getString("major"));
%></td><td><%
	out.print(rs.getString("address"));
}
que.dbClose();
%></tr>
<tr><td><a href="student_info.jsp" name="返回"></a></td></tr>
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