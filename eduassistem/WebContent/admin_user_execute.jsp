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
if(type.equals("addte")) {
	String name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
	String gender=new String(request.getParameter("gender").getBytes("ISO-8859-1"),"UTF-8");
	String inst=new String(request.getParameter("inst").getBytes("ISO-8859-1"),"UTF-8");
	String sql="insert into teacher values ('"+request.getParameter("ID")+"','"+name+"','"+request.getParameter("pwd")+"','"+gender+"','"+inst+"','"+request.getParameter("email")+"')";
	if(exe.dbUpdate(sql)) {
		exe.dbClose();
		%><script type="text/javascript">alert('添加成功!');top.location="admin_user.jsp";</script><%
	}
	else {
		exe.dbClose();
		%><script type="text/javascript">alert('添加失败!');top.location="admin_user.jsp";</script><%
	}
}
if(type.equals("addst")) {
	String name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
	String gender=new String(request.getParameter("gender").getBytes("ISO-8859-1"),"UTF-8");
	String major=new String(request.getParameter("major").getBytes("ISO-8859-1"),"UTF-8");
	String address=new String(request.getParameter("address").getBytes("ISO-8859-1"),"UTF-8");
	String sql="insert into student values ('"+request.getParameter("ID")+"','"+name+"','"+request.getParameter("pwd")+"','"+gender+"','"+request.getParameter("time")+"','"+major+"','"+address+"')";
	if(exe.dbUpdate(sql)) {
		exe.dbClose();
		%><script type="text/javascript">alert('添加成功!');top.location="admin_user.jsp";</script><%
	}
	else {
		exe.dbClose();
		%><script type="text/javascript">alert('添加失败!');top.location="admin_user.jsp";</script><%
	}
}
if(type.equals("delte")) {
	String[] res=request.getParameterValues("del");
	if(res==null) {
		exe.dbClose();
		%><script type="text/javascript">alert('未选择!');top.location="admin_user_delete_teacher.jsp";</script><%
	}
	else {
		int i;
		for(i=0;i<res.length;i++) {
			String sel="delete from teacher where ID='"+res[i]+"'";
			if(!exe.dbUpdate(sel)) {
				exe.dbClose();
				%><script type="text/javascript">alert('删除失败!');top.location="admin_user_delete.jsp";</script><%
			}
		}
		if(i==res.length) {
			exe.dbClose();
			%><script type="text/javascript">alert('删除成功!');top.location="admin_user.jsp";</script><%
		}
	}
}
if(type.equals("delst")) {
	String[] res=request.getParameterValues("del");
	if(res==null) {
		exe.dbClose();
		%><script type="text/javascript">alert('未选择!');top.location="admin_user_delete.jsp";</script><%
	}
	else {
		int i;
		for(i=0;i<res.length;i++) {
			String sel="delete from student where ID='"+res[i]+"'";
			if(!exe.dbUpdate(sel)) {
				exe.dbClose();
				%><script type="text/javascript">alert('删除失败!');top.location="admin_user_delete.jsp";</script><%
			}
		}
		if(i==res.length) {
			exe.dbClose();
			%><script type="text/javascript">alert('删除成功!');top.location="admin_user.jsp";</script><%
		}
	}
}
%>
</body>
</html>