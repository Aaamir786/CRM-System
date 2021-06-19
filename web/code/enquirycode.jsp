<%@page language="java" import="Connect.ConnectionManager"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Connect.SmsSender"%>
<%
    ConnectionManager cm=new ConnectionManager();
    String name=request.getParameter("name");
    String address=request.getParameter("address");
    String gender=request.getParameter("gender");
    String contactno=request.getParameter("contactno");
    String emailaddress=request.getParameter("emailaddress");
    String message=request.getParameter("message");
    ResultSet rs=cm.SelectQuery("select nvl(max(id),0)+1 from enquiry");
    rs.next();
    int id=rs.getInt(1);
    Date d=new Date();
    SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
    String enquirydt=df.format(d);
    String query="insert into enquiry values('"+id+"','"+name+"','"+address+"','"+gender+"','"+contactno+"','"+emailaddress+"','"+message+"','"+enquirydt+"')";
    boolean b=cm.NonQuery(query);
    if(b==true)
    {
        SmsSender s=new SmsSender();
        boolean res=s.SendSms(contactno, "Your Enquiry is submitted successfully .Thank You For showing interest.-Regards CRM");
        if(res==true)
        out.println("<script>alert('Your enquiry is saved and sms is send');window.location.href='../Enquiry.jsp';</script>");
        else
    out.println("<script>alert('Your enquiry is savedbut sms is not send');window.location.href='../Enquiry.jsp';</script>");
       
    }
     else
    {
        out.println("<script>alert('Database Error');window.location.href='../Enquiry.jsp';</script>");
    }
    %>