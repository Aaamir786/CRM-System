package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Enquiry_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/MasterPages/header.jsp");
    _jspx_dependants.add("/MasterPages/left.jsp");
    _jspx_dependants.add("/MasterPages/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"CSS/GeneralStyle.css\" rel=\"stylesheet\"/>\n");
      out.write("        <script>var imgno=1;\n");
      out.write("function MoveSlider()\n");
      out.write("{\n");
      out.write("  if(imgno>6)\n");
      out.write("  imgno=1;\n");
      out.write("  document.getElementById(\"slide\").src=\"images/\"+imgno+\".jpg\";\n");
      out.write("  imgno++;\n");
      out.write("  window.setTimeout(\"MoveSlider()\",2000);\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("<style>\n");
      out.write("    .input\n");
      out.write("    {\n");
      out.write("        width:200px;\n");
      out.write("        height:30px;\n");
      out.write("        border-radius: 5px;\n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"MoveSlider()\">\n");
      out.write("        <form action=\"code/enquirycode.jsp\" method=\"post\">\n");
      out.write("            <div id=\"wrapper\">\n");
      out.write("                ");
      out.write("<div id=\"header\">\n");
      out.write("    <div id=\"logo\">\n");
      out.write("        <img src=\"images/images (5)_1.jpg\" width=\"150\" height=\"150\" />\n");
      out.write("    </div>\n");
      out.write("    <div id=\"banner\">\n");
      out.write("        <span> CUSTOMER RELATIONSHIP MANAGEMENT</span>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<div id=\"menu\">\n");
      out.write("   \n");
      out.write("\t\t\t<ul style=\"margin-top:0px\">\n");
      out.write("\t\t\t\t<a href=\"index.jsp\"><li>Home</li></a>\n");
      out.write("\t\t\t\t<a href=\"registration.jsp\"><li>Registration</li></a>\n");
      out.write("\t\t\t\t<a href=\"login.jsp\"><li>Login</li></a>\n");
      out.write("                                <!--<a href=\"career.jsp\"><li>career</li></a>-->\n");
      out.write("\t\t\t\t<a href=\"contact.jsp\"><li>Contact</li></a>\n");
      out.write("                                <a href=\"Enquiry.jsp\"><li>Enquiry</li></a>\n");
      out.write("                                <a href=\"aboutus.jsp\"><li>About us</li></a>\n");
      out.write("                              \n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t</div>\n");
      out.write("<div id=\"slider\">\n");
      out.write("    <img id=\"slide\" width=\"1000\" height=\"250\"/>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div id=\"container\">\n");
      out.write("                    ");
      out.write("<div id=\"left\" style=\"background-image: url('images/jjh.jpg')\">\r\n");
      out.write("                         <center>\r\n");
      out.write("                             <marquee direction=\"up\" onmouseover=\"this.stop()\" onmouseout=\"this.start()\">\r\n");
      out.write("                             \r\n");
      out.write("                         <img src=\"images/newAni.gif\">Introduction Of Customer Relationship Management.<br>                                            \r\n");
      out.write("                         <img src=\"images/newAni.gif\">1.Types Of CRM<br>1.1 Operational CRM<br>1.2 Analytical CRM<br><br>1.3 colaborate CRM<br> \r\n");
      out.write("                         <img src=\"images/newAni.gif\">2.Main Components Of CRM<br><br>2.1 Relational intelligence<br>\r\n");
      out.write("                         <img src=\"images/newAni.gif\">3.Impact On Customer Satisfaction<br><br>3.1 Examples<br><br>3.2 CRM Paradox<br>              \r\n");
      out.write("                         <img src=\"images/newAni.gif\">4.How To Improve CRM Within a Firm<br><br>4.1 Analyzing The Information<br><br>4.2 Employee Training<br><br>4.3 Reviewing Process<br><br>4.4 Designing New Processes<br>\r\n");
      out.write("                         </marquee>\r\n");
      out.write("                           </center>\r\n");
      out.write("                    \r\n");
      out.write("</div>");
      out.write("\n");
      out.write("                    <div id=\"main\">\n");
      out.write("                        <table width=\"75%\" style=\"border: 1px solid green;border-radius: 10px;background-color: aquamarine; margin:0px auto;margin-top:80px;color:blue;text-align: center;\">\n");
      out.write("                            <tr>    \n");
      out.write("                            <td colspan=\"2\"><h2>Enquiry Form</h2></td>\n");
      out.write("                            </tr> \n");
      out.write("                            \n");
      out.write("                                <tr>\n");
      out.write("                                <td>\n");
      out.write("                                    Enter Your Name\n");
      out.write("                                </td>\n");
      out.write("                                <td><input class=\"input\" type=\"text\" name=\"name\"></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Your Address</td>\n");
      out.write("                                <td><textarea style=\"width: 200px;height: 80px;resize:none;\" name=\"address\"></textarea></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Select Your Gender</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"radio\" name=\"gender\" value=\"Male\">Male\n");
      out.write("                                    <input type=\"radio\" name=\"gender\" value=\"Female\">Female\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Contact NO.</td>\n");
      out.write("                                <td><input type=\"text\" name=\"contactno\" class=\"input\"/></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Email Address</td>\n");
      out.write("                                <td><input type=\"text\" name=\"emailaddress\" class=\"input\"/></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Your Message</td>\n");
      out.write("                                <td><textarea style=\"width: 200px;height: 80px;resize:none;\" name=\"message\"></textarea></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td></td>\n");
      out.write("                                <td><input style=\"width:100px;height:30px;background-color: aqua;border-radius:10px\" type=\"submit\" value=\"Submit\"></td>\n");
      out.write("                            </tr>\n");
      out.write("                            \n");
      out.write("                        </table>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                    ");
      out.write("<div id=\"footer\">\n");
      out.write("    <div id=\"lfooter\">\n");
      out.write("        Copyright &copy; to Customer Relationship Management\n");
      out.write("    </div>\n");
      out.write("    <div id=\"rfooter\">\n");
      out.write("        Developed By:-Shubham Jaiswal , Rahul Kumar\n");
      out.write("    </div>\n");
      out.write("</div>");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
