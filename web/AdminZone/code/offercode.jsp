<%@page import="java.sql.ResultSet"%>
<%@page import="Connect.ConnectionManager"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
String offer=request.getParameter("offer");
String todate=request.getParameter("todate");
String fromdate=request.getParameter("fromdate");
java.util.Date d=new java.util.Date();
SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy");
String date =sdf.format(d);
ConnectionManager cm=new ConnectionManager();
ResultSet rs=cm.SelectQuery("select nvl(max(offerid),0)+1 from offer"); 
rs.next();
int id=rs.getInt(1);

String q="insert into offer values('"+id+"','"+offer+"','"+todate+"','"+fromdate+"','"+date+"')";

if(cm.NonQuery(q)==true)
{
out.println("<script>alert('Offer Saved');window.location.href='../addoffer.jsp';</script>");
}
else{
out.println("<script>alert('Offer is not Saved');window.location.href='../addoffer.jsp';</script>");
}
      
%>