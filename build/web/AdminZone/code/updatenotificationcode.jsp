<%@page import="Connect.ConnectionManager"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    String notificationmsg=request.getParameter("notificationmsg");
    ConnectionManager cm=new ConnectionManager();
    String query="update Notification set notificationmsg='"+notificationmsg+"'where id='"+id+"'";
    if(cm.NonQuery(query)==true)
        out.print("<script>alert('Notification Update');window.location.href='../adminhome.jsp';</script>");
    else
        out.print("<script>alert('Notification Not Update');window.location.href='../adminhome.jsp';</script>");
    %>