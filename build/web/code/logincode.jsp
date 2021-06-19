<%@page import="java.sql.ResultSet"%>
<%@page import="Connect.ConnectionManager"%>
<%
String password=request.getParameter("pass");
String uid=request.getParameter("uid");
String query="select * from login where userid='"+uid+"' and passwd='"+password+"'";
ConnectionManager Cm=new ConnectionManager();
ResultSet rs=Cm.SelectQuery(query);
if(rs.next())
{
String utype=rs.getString(3);
if(utype.equals("user"))
{
session.setAttribute("userid", uid);
out.println("<script>alert('Valid User');window.location.href='../UserZone/UserHome.jsp';</script>");
}
else if(utype.equals("admin"))
{
session.setAttribute("adminuserid", uid);
out.println("<script>alert('Valid User');window.location.href='../AdminZone/adminhome.jsp';</script>");
}
}
else{
out.println("<script>alert('Invalid User');window.location.href='../login.jsp';</script>");

}

%>