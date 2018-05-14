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
if(type.equals("cpd")) {
	String sql="update student set pwd='"+request.getParameter("newpwd")+"' where ID='"+session.getAttribute("onuser")+"'";
	if(exe.dbUpdate(sql)) {
		exe.dbClose();
		%><script type="text/javascript">alert('更改成功!');top.location="student.jsp";</script><%
	}
	else {
		exe.dbClose();
		%><script type="text/javascript">alert('更改失败!');top.location="student.jsp";</script><%
	}
}
if(type.equals("cad")) {
	String newadd=new String(request.getParameter("newads").getBytes("ISO-8859-1"),"UTF-8");
	String sql="update student set address='"+newadd+"' where ID='"+session.getAttribute("onuser")+"'";
	if(exe.dbUpdate(sql)) {
		exe.dbClose();
		%><script type="text/javascript">alert('更改成功!');top.location="student.jsp";</script><%
	}
	else {
		exe.dbClose();
		%><script type="text/javascript">alert('更改失败!');top.location="student.jsp";</script><%
	}
}
%>
</body>
</html>