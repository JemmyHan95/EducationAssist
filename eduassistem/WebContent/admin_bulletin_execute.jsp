<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,java.sql.*,eduassistemdbquery.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<%
	dbConnection exe = new dbConnection();
	String type = request.getParameter("exetype");
	if (type.equals("addbu")) {
		String title =new String(request.getParameter("title").getBytes("ISO-8859-1"),"UTF-8");
		String con=new String(request.getParameter("con").getBytes("ISO-8859-1"),"UTF-8");
		String sql = "insert into bulletin values ('" + title + "','"+ request.getParameter("time") + "','" + con + "')";
		if(exe.dbUpdate(sql)) {
			exe.dbClose();
			%><script type="text/javascript">alert('添加成功!');top.location = "admin_bulletin.jsp";</script><%
		}
		else {
			exe.dbClose();
			%><script type="text/javascript">alert('添加失败!');top.location = "admin_bulletin.jsp";</script><%
		}
	}
	if (type.equals("delbu")) {
		String[] res = request.getParameterValues("del");
		if (res == null) {
			exe.dbClose();
			%><script type="text/javascript">alert('未选择!');top.location = "admin_bulletin_delete.jsp";</script><%
		}
		else {
			int i;
			for (i = 0; i < res.length; i++) {
				String seq=new String(res[i].getBytes("ISO-8859-1"),("UTF-8"));
				String sel = "delete from bulletin where title='" + seq + "'";
				if (!exe.dbUpdate(sel)) {
					exe.dbClose();
					%><script type="text/javascript">alert('删除失败!');top.location = "admin_bulletin_delete.jsp";</script><%
				}
			}
			if (i == res.length) {
				exe.dbClose();
				%><script type="text/javascript">alert('删除成功!');top.location = "admin_bulletin.jsp";</script><%
			}
		}
	}
%>
</body>
</html>