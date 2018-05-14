<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,java.sql.*,eduassistemdbquery.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<%
dbConnection exe=new dbConnection();
String type=request.getParameter("exetype");
if(type.equals("addco")) {
	String name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
	String inst=new String(request.getParameter("inst").getBytes("ISO-8859-1"),"UTF-8");
	String teacher=new String(request.getParameter("teacher").getBytes("ISO-8859-1"),"UTF-8");
	String address=new String(request.getParameter("address").getBytes("ISO-8859-1"),"UTF-8");
	String sql="insert into course values ('"+request.getParameter("ID")+"','"+name+"','"+inst+"','"+teacher+"','"+request.getParameter("credit")+"','"+address+"')";
	if(exe.dbUpdate(sql)) {
		exe.dbClose();
		%><script type="text/javascript">alert('添加成功!');top.location="admin_resource_course.jsp";</script><%
	}
	else {
		exe.dbClose();
		%><script type="text/javascript">alert('添加失败!');top.location="admin_resource_course.jsp";</script><%
	}
}
if(type.equals("delco")) {
	String[] res=request.getParameterValues("del");
	if(res==null) {
		exe.dbClose();
		%><script type="text/javascript">alert('未选择!');top.location="admin_resource_course_delete.jsp";</script><%
	}
	else {
		int i;
		for(i=0;i<res.length;i++) {
			String sel="delete from course where ID='"+res[i]+"'";
			if(!exe.dbUpdate(sel)) {
				exe.dbClose();
				%><script type="text/javascript">alert('删除失败!');top.location="admin_resource_course_delete.jsp";</script><%
			}
		}
		if(i==res.length) {
			exe.dbClose();
			%><script type="text/javascript">alert('删除成功!');top.location="admin_resource_course.jsp";</script><%
		}
	}
}
if(type.equals("updco")) {
	String teacher=new String(request.getParameter("teacher").getBytes("ISO-8859-1"),"UTF-8");
	String address=new String(request.getParameter("address").getBytes("ISO-8859-1"),"UTF-8");
	String sql="update course set teacher='"+teacher+"',credit='"+request.getParameter("credit")+"',address='"+address+"' where ID='"+request.getParameter("ID")+"'";
	if(exe.dbUpdate(sql)) {
		exe.dbClose();
		%><script type="text/javascript">alert('更改成功!');top.location="admin_resource_course.jsp";</script><%
	}
	else {
		exe.dbClose();
		%><script type="text/javascript">alert('更改失败!');top.location="admin_resource_course.jsp";</script><%
	}
}
%>
</body>
</html>