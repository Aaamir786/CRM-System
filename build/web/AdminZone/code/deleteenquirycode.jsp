<%@page import="Connect.ConnectionManager"%>
<%
    String q="delete from enquiry where id='"+Integer.parseInt(request.getParameter("id"))+"'";
    ConnectionManager Cm=new ConnectionManager();
    if(Cm.NonQuery(q)==true)
    {
    out.println("<script>alert('Enquiry Deleted');window.location.href='../manageenquiry.jsp';</script>");
    }
    else{
        out.println("<script>alert('Enquiry is not Deleted');window.location.href='../manageenquiry.jsp';</script>");

    }
%>