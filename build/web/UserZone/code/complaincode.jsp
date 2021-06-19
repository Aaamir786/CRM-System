<%@page language="java" import="Connect.ConnectionManager"%>
<%@page language="java" import="java.util.Date"%>
<%@page language="java" import="java.text.SimpleDateFormat"%>
<%@page language="java" import="java.sql.*" %>
<%
    ConnectionManager cm=new ConnectionManager();
    String name=session.getAttribute("username").toString();
    String emailaddress=session.getAttribute("userid").toString();
    String subject=request.getParameter("subject");
    String complainmsg=request.getParameter("complainmsg");
    Date d=new Date();
    SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
    String complaindt=df.format(d);
    ResultSet rs=cm.SelectQuery("select nvl(max(complainid),0)+1 from complain");
    rs.next();
    int id=rs.getInt(1);
    String Query="insert into complain values("+id+",'"+name+"','"+emailaddress+"','"+subject+"','"+complainmsg+"','"+complaindt+"')";
    
    if(cm.NonQuery(Query)==true)
        out.print("<script>alert('Your complain is submitted');window.location.href='../complain.jsp';</script>");
    else
        out.print("<script>alert('Your complain  not saved');window.location.href='../complain.jsp';</script>"); 
    %>
    