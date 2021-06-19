
<%@page import="Connect.SmsSender"%>
<%@page import="Connect.ConnectionManager"%>
<%
    String code = request.getParameter("code");
    String ccode = request.getParameter("ccode");
    //boolean b;
    if (code.equals(ccode))
    {
  
   
    String name = request.getParameter("name");
    String fname = request.getParameter("fname");
    String address = request.getParameter("address");
    String gender = request.getParameter("gender");
    String cdate = request.getParameter("cdate");  
    String  department = request.getParameter("department"); 
    String contact = request.getParameter("contact"); 
    String emailaddress = request.getParameter("emailaddress"); 
    String password = request.getParameter("password");
    String cpass = request.getParameter("cpass"); 
 if(password.equals(cpass))
 {
    ConnectionManager Cm = new ConnectionManager();
    String query1="insert into registration values('"+name+"','"+fname+"','"+address+"','"+gender+"','"+cdate+"','"+department+"','"+contact+"','"+emailaddress+"')";
    String query2="insert into login values('"+emailaddress+"','"+password+"','user')";
    if(Cm.NonQuery(query1)==true)
    {
        if(Cm.NonQuery(query2)==true)
        {
            SmsSender s=new SmsSender();
            
            String msg="Registration is Succesfully.\nYour UserId is-  "+emailaddress+" \nYour password is-  "+password;
            
        boolean res=s.SendSms(contact, msg);
        if(res==true)
        out.println("<script>alert('Your registration is saved and sms is send');window.location.href='../registration.jsp';</script>");
        else
    out.println("<script>alert('Your registration is savedbut sms is not send');window.location.href='../registration.jsp';</script>");
            //out.print("<script>alert('registration scccessfull');window.location.href='../registration.jsp';</script>");
        }
        else
        {
        out.print("<script>alert('Database error');window.location.href='../registration.jsp';</script>");
        }
    }
    else 
    {
        out.print("<script>alert('Database error');window.location.href='../registration.jsp';</script>");
    }
        
 }
 else{
         out.print("<script>alert('Invalid Password');window.location.href='../registration.jsp';</script>");

 }
    
    
    }
    else
    {
    out.print("<script>alert('Invalid Captcha code'); window.location.href='../registration.jsp';</script>");
    }
        

%>