<%@page import="Connect.ConnectionManager"%>
<%
    ConnectionManager cm=new ConnectionManager();
   int id=Integer.parseInt(request.getParameter("id"));
   String Query="delete from offer where offerid='"+id+"'";
   if(cm.NonQuery(Query))
       out.print("<script>alert('Offer Deleted');window.location.href='../addoffer.jsp';</script>");
   else
   out.print("<script>alert('Offer is not Deleted');window.location.href='../addoffer.jsp';</script>");
       
               %>
    