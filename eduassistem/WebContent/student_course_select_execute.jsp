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
String[] res=request.getParameterValues("sel");
String sID=request.getParameter("sID");
if(res==null) {
	exe.dbClose();
	%><script type="text/javascript">alert('未选择!');top.location="student_course_select.jsp";</script><%
}
else {
	int i;
	for(i=0;i<res.length;i++) {
		String sql="insert into selcourse (sID,cID,grade) values ('"+sID+"','"+res[i]+"','')";
		if(!exe.dbUpdate(sql)) {
			exe.dbClose();
			%><script type="text/javascript">alert('选课失败!');top.location="student_course_select.jsp";</script><%
		}
	}
	if(i==res.length) {
		exe.dbClose();
		%><script type="text/javascript">alert('选课成功!');top.location="student_course_select.jsp";</script><%
	}
}
%>
</body>
</html>