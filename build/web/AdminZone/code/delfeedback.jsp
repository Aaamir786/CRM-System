<%@page import="Connect.ConnectionManager"%>
<%
    String q="delete from feedback where feedbackid='"+Integer.parseInt(request.getParameter("id"))+"'";
    ConnectionManager Cm=new ConnectionManager();
    if(Cm.NonQuery(q)==true)
    {
    out.println("<script>alert('Feedback Deleted');window.location.href='../managefeedback.jsp';</script>");
    }
    else{
        out.println("<script>alert('Feedback is not Deleted');window.location.href='../managefeedback.jsp';</script>");

    }
%>