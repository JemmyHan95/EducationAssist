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
String cID=request.getParameter("cID");
String[] sID=(String[])session.getAttribute("sID");
int count=Integer.parseInt(session.getAttribute("scount").toString());
for(int i=0;i<=count;i++) {
	String sql="update selcourse set grade='"+request.getParameter(sID[i])+"' where cID='"+cID+"' and sID='"+sID[i]+"'";
	boolean res=exe.dbUpdate(sql);
	if(!res) {
		exe.dbClose();
		%><script type="text/javascript">alert('成绩录入失败!');top.location="teacher_course_grade.jsp";</script><%
	}
}
exe.dbClose();
%><script type="text/javascript">alert('成绩录入成功!');top.location="teacher.jsp";</script><%
%>
</body>
</html>