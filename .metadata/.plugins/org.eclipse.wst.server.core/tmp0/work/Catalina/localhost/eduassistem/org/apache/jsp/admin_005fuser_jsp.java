/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.33
 * Generated at: 2016-05-01 02:37:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;
import eduassistemdbquery.*;

public final class admin_005fuser_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_packages.add("eduassistemdbquery");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>用户管理</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<table width=\"740\" border=\"0\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td colspan=\"2\" style=\"background-color:#99bbbb;\">\r\n");
      out.write("<h1>欢迎回来!管理员:");
out.print(session.getAttribute("onuser"));
      out.write("<a href=\"index.jsp\">退出</a></h1>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr valign=\"top\">\r\n");
      out.write("<td style=\"background-color:#ffff99;width:100px;text-align:top;\">\r\n");
      out.write("<b>菜单</b><br />\r\n");
      out.write("<a href=\"admin_user.jsp\">用户管理</a><br />\r\n");
      out.write("<a href=\"admin_bulletin.jsp\">公告管理</a><br />\r\n");
      out.write("<a href=\"admin_resource.jsp\">资源管理</a>\r\n");
      out.write("</td>\r\n");
      out.write("<td style=\"background-color:#EEEEEE;height:200px;width:400px;text-align:top;\">\r\n");
      out.write("<table>\r\n");
      out.write("<tr><th>教师</th></tr>\r\n");
      out.write("<tr><td>姓名</td><td>性别</td><td>学院</td><td>电子邮箱</td>\r\n");

dbConnection ad=new dbConnection();
String sqlt="select * from teacher";
ResultSet rst=ad.dbQuery(sqlt);
while(rst.next()) {

      out.write("<tr><td>");

	out.print(rst.getString("name"));

      out.write("</td><td>");

	out.print(rst.getString("gender"));

      out.write("</td><td>");

	out.print(rst.getString("inst"));

      out.write("</td><td>");

	out.print(rst.getString("email"));
}

      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<table>\r\n");
      out.write("<tr><th>学生</th></tr>\r\n");
      out.write("<tr><td>姓名</td><td>性别</td><td>入学时间</td><td>专业</td><td>地址</td></tr>\r\n");

String sqls="select * from student";
ResultSet rss=ad.dbQuery(sqls);
while(rss.next()) {

      out.write("<tr><td>");

	out.print(rss.getString("name"));

      out.write("</td><td>");

	out.print(rss.getString("gender"));

      out.write("</td><td>");

	out.print(rss.getString("time"));

      out.write("</td><td>");

	out.print(rss.getString("major"));

      out.write("</td><td>");

	out.print(rss.getString("address"));
}
ad.dbClose();

      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<table>\r\n");
      out.write("<td colspan=\"2\"><a href=\"admin_user_add.jsp\"><input type=\"button\" value=\"增加\" /></a></td>\r\n");
      out.write("<td colspan=\"2\"><a href=\"admin_user_delete.jsp\"><input type=\"button\" value=\"删除\" /></a></td>\r\n");
      out.write("</table>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td colspan=\"2\" style=\"background-color:#99bbbb;text-align:center;\">\r\n");
      out.write("Copyright LittleBo 2016.4</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
