<%@ page language="java" contentType="text/html; charset=UTF-8"  import="java.util.*,java.sql.*,eduassistemdbquery.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除公告</title>
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
<form action="admin_bulletin_execute.jsp" method="post">
<input type="hidden" name="exetype" value="delbu" />
<table>
<th>删除公告</th>
<tr>
<td>公告标题</td><td>发布时间</td>
</tr>
<%
String qsql="select * from bulletin";
dbConnection del=new dbConnection();
ResultSet qrs=del.dbQuery(qsql);
while(qrs.next()){
%>
<tr>
<td><%out.print(qrs.getString("title"));%></td><td><%out.print(qrs.getString("time"));%></td>
<td><input type="checkbox" name="del" value="<%=qrs.getString("title")%>"/></td>
</tr>
<%
}
del.dbClose();
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