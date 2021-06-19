<%@page import="Connect.ConnectionManager"%>
<%
    String q="delete from complain where complainid='"+Integer.parseInt(request.getParameter("id"))+"'";
    ConnectionManager Cm=new ConnectionManager();
    if(Cm.NonQuery(q)==true)
    {
    out.println("<script>alert('Complain Deleted');window.location.href='../managecomplain.jsp';</script>");
    }
    else{
        out.println("<script>alert('Complain is not Deleted');window.location.href='../managecomplain.jsp';</script>");

    }
%>