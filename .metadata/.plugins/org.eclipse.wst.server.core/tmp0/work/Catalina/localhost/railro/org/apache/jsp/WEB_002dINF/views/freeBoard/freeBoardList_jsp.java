/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.36
 * Generated at: 2016-08-29 01:04:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.freeBoard;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class freeBoardList_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<div class=\"content\">\r\n");
      out.write("\t<div class=\"setting\">\r\n");
      out.write("\t\t<div class=\"limit-setting\">\r\n");
      out.write("\t\t\t<form action=\"\" method=\"get\">\r\n");
      out.write("\t\t\t\t<select name=\"limit\" onchange=\"limit_submit()\">\r\n");
      out.write("\t\t\t\t\t<option value=\"5\">5</option>\r\n");
      out.write("\t\t\t\t\t<option value=\"10\" selected=\"selected\">10</option>\r\n");
      out.write("\t\t\t\t\t<option value=\"15\">15</option>\r\n");
      out.write("\t\t\t\t\t<option value=\"20\">20</option>\r\n");
      out.write("\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t개씩 보기\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<span>글 개수 :</span>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<table width=\"100%\">\r\n");
      out.write("\t  <tr>\r\n");
      out.write("\t    <th width=\"10%\">글번호</th>\r\n");
      out.write("\t    <th width=\"10%\">분류</th>\r\n");
      out.write("\t    <th width=\"50%\" style=\"text-align: left\">제목</th>\r\n");
      out.write("\t    <th width=\"10%\">작성자</th>\r\n");
      out.write("\t    <th width=\"10%\">조회수</th>\r\n");
      out.write("\t    <th width=\"10%\">작성일</th>\r\n");
      out.write("\t  </tr>\r\n");
      out.write("\t  \r\n");
      out.write("\t  <tr>\r\n");
      out.write("\t  \t<td>1</td>\r\n");
      out.write("\t  \t<td>내일로</td>\r\n");
      out.write("\t  \t<td style=\"text-align: left\">제목입니다</td>\r\n");
      out.write("\t  \t<td>홍혜진</td>\r\n");
      out.write("\t  \t<td>4</td>\r\n");
      out.write("\t  \t<td>2016.08.21</td>\r\n");
      out.write("\t  </tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"button1\">\r\n");
      out.write("\t\t<button class=\"button\" onclick=\"location.href='freeBoardReg.htm'\">글등록</button>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"paging\" align=\"center\">\r\n");
      out.write("\t이전&nbsp;다음\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("      <!-- 검색입력 폼 -->\r\n");
      out.write("\t<form method= post action=\"\">\r\n");
      out.write("\t\t<div class=\"search\">\r\n");
      out.write("\t\t  \t<select name=\"src_name\">\r\n");
      out.write("\t\t        <option value=\"name\">이름 </option>\r\n");
      out.write("\t\t        <option value=\"subject\" selected>제목 </option>\r\n");
      out.write("\t\t\t\t<option value=\"memo\">내용 </option>\r\n");
      out.write("\t\t    </select>\r\n");
      out.write("\t\t  \t<input type=\"text\" name=\"src_value\" size=\"15\"/>\r\n");
      out.write("\t\t\t<input type=\"submit\" value=\"검색\"/>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t </form>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
