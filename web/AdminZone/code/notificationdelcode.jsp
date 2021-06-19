<%@page language="Java" import="Connect.ConnectionManager"%>
<%
int nid=Integer.parseInt(request.getParameter("nid"));
String delQuery="delete from notification where id='"+nid+"'";
ConnectionManager cm=new ConnectionManager();
boolean done=cm.NonQuery(delQuery);
if(done==true){
    out.print("<script>alert('Notification deleted'); window.location.href='../adminhome.jsp';</script>");
}
else{
        out.print("<script>alert('Notification not deleted'); window.location.href='../adminhome.jsp';</script>");

}
%>