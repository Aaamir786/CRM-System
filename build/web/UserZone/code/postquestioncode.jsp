<%@page language="java" import="Connect.ConnectionManager"%>
<%@page language="java" import="java.util.Date"%>
<%@page language="java" import="java.text.SimpleDateFormat"%>
<%@page language="java" import="java.sql.ResultSet"%>
<%
    String questiontext=request.getParameter("question");
    String askedby=session.getAttribute("username").toString();
    Date d=new Date();
    SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
    String posteddt=df.format(d);
    ConnectionManager cm=new ConnectionManager();
    ResultSet rs=cm.SelectQuery("select nvl(max(qid),0)+1 from question");
    rs.next();
    int id=rs.getInt(1);
    String Query="insert into question values("+id+",'"+questiontext+"','"+askedby+"','"+posteddt+"')";
    if(cm.NonQuery(Query)==true)
    
    out.print("<script>alert('Question posted successfully');window.location.href='../postquestion.jsp';</script>");
    else
    
        out.print("<script>alert('Question posted not successfully');window.location.href='../posquestion.jsp';</script>"); 
    %>
    
    
   