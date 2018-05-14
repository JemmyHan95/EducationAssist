<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,java.sql.*,eduassistemdbquery.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更改课程</title>
</head>
<body>
<%
String rec=request.getParameter("upd");
if(rec==null) {
	%><script type="text/javascript">alert('未选择!');top.location="admin_resource_course_update.jsp";</script><%
}
else {
%>
<table width="800" border="0">
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
<form action="admin_resource_course_execute.jsp" method="post">
<input type="hidden" name="exetype" value="updco"/>
<table>
<th>更改课程</th>
<tr>
<td>课程编号</td><td>课程名称</td><td>开课院系</td><td>授课教师</td><td>学分</td><td>上课地点</td>
</tr>
<%
	dbConnection upd=new dbConnection();
	String rsql="select * from course where ID='"+rec+"'";
	ResultSet eupd=upd.dbQuery(rsql);
	if(eupd.next()){
%>
<tr>
<td><%out.print(eupd.getString("ID"));%></td>
<td><%out.print(eupd.getString("name"));%></td>
<td><%out.print(eupd.getString("inst"));%></td>
<td><input type="text" name="teacher" value="<%=eupd.getString("teacher")%>" onfocus="this.value=''"/></td>
<td><input type="text" name="credit" value="<%=eupd.getString("credit")%>" onfocus="this.value=''"/></td>
<td><input type="text" name="address" value="<%=eupd.getString("address")%>" onfocus="this.value=''"/></td>
</tr>
<tr>
<td><input type="hidden" name="ID" value="<%=eupd.getString("ID")%>"/>
<input type="submit" value="确定" /></td><td><input type="reset" value="重置"/></td>
</tr>
</table>
</form>
<%
		upd.dbClose();
	}
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