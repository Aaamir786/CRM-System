<%@page language="Java" import="Connect.ConnectionManager"%>
<%@page language="Java" import="java.sql.*"%>
<%
    ConnectionManager cm=new ConnectionManager();
   ResultSet rs=cm.SelectQuery("select nvl(max(id),0)+1 from notification");
   rs.next();
   int id=rs.getInt(1);
String notificationmsg=request.getParameter("notification");
   String Querry="insert into notification values("+id+",'"+notificationmsg+"')";
     
     if(cm.NonQuery(Querry)==true)
     {
             out.print("<script>alert('Notification posted Successfully');window.location.href='../adminhome.jsp';</script>");
     }
     else
     {
         out.print("<script>alert('Notification is not saved');window.location.href='../adminhome.jsp';</script>");
     }
%>