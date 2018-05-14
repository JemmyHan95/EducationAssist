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
String sID=request.getParameter("sID");
String tID=request.getParameter("tID");
String time=request.getParameter("time");
String answer=new String(request.getParameter("answer").getBytes("ISO-8859-1"),"UTF-8");
String sql="update communication set answer='"+answer+"' where sID='"+sID+"' and tID='"+tID+"' and time='"+time+"'";
if(exe.dbUpdate(sql)) {
	exe.dbClose();
	%><script type="text/javascript">alert('回复成功!');top.location="teacher_qa.jsp";</script><%
}
else {
	exe.dbClose();
	%><script type="text/javascript">alert('回复失败!');top.location="teacher_qa.jsp";</script><%
}
%>
</body>
</html>