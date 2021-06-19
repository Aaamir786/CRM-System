<%@page language="java" import="Connect.ConnectionManager"%>
<%@page language="java" import="java.sql.ResultSet"%>
<%
    String answertext=request.getParameter("answer");
    String answeredby=session.getAttribute("username").toString();
    int qid=Integer.parseInt(request.getParameter("qid"));
    ConnectionManager c=new ConnectionManager();
    ResultSet rs=c.SelectQuery("select nvl(max(aid),0)+1 from answer");
    rs.next();
    int id=rs.getInt(1);
    String query="insert into answer values("+id+",'"+answertext+"','"+answeredby+"','"+qid+"')";
    if(c.NonQuery(query)==true)
        out.print("<script>alert('Answer posted successfully');window.location.href='../postquestion.jsp';</script>");
        else
        out.print("<script>alert('Answer posted not successfully');window.location.href='../postquestion.jsp';</script>");
    %>