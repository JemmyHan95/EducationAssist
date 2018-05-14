<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*,java.sql.*,eduassistemdbquery.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%
String sql="select * from "+request.getParameter("usertype")+" where ID='"+request.getParameter("name")+"' and Pwd='"+request.getParameter("pwd")+"'";
dbConnection lg=new dbConnection();
ResultSet rs=lg.dbQuery(sql);
if(rs.next()){
	session.setAttribute("onuser",rs.getString("ID"));
	String rd=request.getParameter("usertype")+".jsp";
	response.sendRedirect(rd);
}
else
%><script type="text/javascript">alert("用户名不存在或密码错误!");top.location="index.jsp";</script><%
%>
</body>
</html>