<%@page import="java.text.SimpleDateFormat"%>
<%@page language="java" import="Connect.ConnectionManager"%>
<%@page language="java" import="java.util.Date"%>
<%@page language="java" import="java.sql.ResultSet"%>
<%
    ConnectionManager cm=new ConnectionManager();
    String name=session.getAttribute("username").toString();
    String emailaddress=session.getAttribute("userid").toString();
    String feedbackmsg=request.getParameter("feedbackmsg");
    Date dt=new Date();
    SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
    String feedbackdt=df.format(dt);
    ResultSet rs=cm.SelectQuery("select nvl(max(feedbackid),0)+1 from feedback");
    rs.next();
    int id=rs.getInt(1);
    String Query="insert into feedback values("+id+",'"+name+"','"+emailaddress+"','"+feedbackmsg+"','"+feedbackdt+"')";
    
    if(cm.NonQuery(Query)==true)
        out.print("<script>alert('Your feedback is submitted');window.location.href='../feedback.jsp';</script>");
    else
        out.print("<script>alert('Your feedback is not submitted');window.location.href='../feedback.jsp';</script>"); 
    %>