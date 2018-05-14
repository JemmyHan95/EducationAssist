<%@ page language="java" contentType="text/html; charset=UTF-8"  import="java.util.*,java.sql.*,eduassistemdbquery.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公告管理</title>
</head>
<body>
<table width="740" border="0">
<tr>
<td colspan="2" style="background-color:#99bbbb;">
<h1>欢迎回来!管理员:<%out.print(session.getAttribute("onuser"));%><a href="index.jsp">退出</a></h1>
</td>
</tr>
<tr valign="top">
<td style="background-color:#ffff99;width:100px;text-align:top;">
<b>菜单</b><br />
<a href="admin_user.jsp">用户管理</a><br />
<a href="admin_bulletin.jsp">公告管理</a><br />
<a href="admin_resource.jsp">资源管理</a>
</td>
<td style="background-color:#EEEEEE;height:200px;width:400px;text-align:top;">
<table>
<tr><th>公告</th></tr>
<tr><td>标题</td><td>时间</td><td>内容</td>
<%
dbConnection bu=new dbConnection();
String sqlb="select * from bulletin";
ResultSet rst=bu.dbQuery(sqlb);
while(rst.next()){
%><tr><td><%
	out.print(rst.getString("title"));
%></td><td><%
	out.print(rst.getString("time"));
%></td><td><%
	out.print(rst.getString("con"));
}
%></tr>
</table>
<%bu.dbClose();%>
<table>
<tr>
<td colspan="2"><a href="admin_bulletin_add.jsp"><input type="button" value="增加" /></a></td>
<td colspan="2"><a href="admin_bulletin_delete.jsp"><input type="button" value="删除" /></a></td>
</tr>
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