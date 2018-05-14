<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,java.sql.*,eduassistemdbquery.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>成绩录入</title>
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
String sql="select sID from selcourse where cID='"+request.getParameter("ID")+"'";
ResultSet rs=co.dbQuery(sql);
if(!rs.isBeforeFirst()) {
	co.dbClose();
	%><script type="text/javascript">alert('该课程尚未有学生选择!');top.location="teacher_course.jsp";</script><%
}
else {
%>
<form action="teacher_course_grade_execute.jsp" method="post">
<input type="hidden" name="cID" value="<%=request.getParameter("ID")%>" />
<table>
<th>请输入成绩</th>
<tr><td>学生</td><td>成绩</td></tr>
<%
	String[] st=new String[50];
	int count=0;
	while(rs.next()) {
		st[count]=rs.getString("sID");
		dbConnection std=new dbConnection();
		String tsql="select name from student where ID='"+st[count]+"'";
		ResultSet trs=std.dbQuery(tsql);
		trs.next();
		%><tr><td><%out.print(trs.getString("name"));%></td><td><input type="text" name="<%=st[count]%>" /></td></tr><%
		std.dbClose();
		count++;
	}
	session.setAttribute("sID",st);
	session.setAttribute("scount",count);
	co.dbClose();
}
%>
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