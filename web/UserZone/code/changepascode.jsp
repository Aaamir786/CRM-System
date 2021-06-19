<%@page import="Connect.ConnectionManager"%>
<%

    String pass=request.getParameter("pass");  
    String cpass=request.getParameter("cpass");
    String oldpass=request.getParameter("oldpass");
    if(pass.equals(cpass))
    {
   String query="update login set passwd='"+pass+"' where userid='"+session.getAttribute("userid") +"'";
   ConnectionManager  Cm=new ConnectionManager();
   if(Cm.NonQuery(query))
   {
   out.println("<script>alert('Your Password Changed');window.location.href='../changepass.jsp';</script>");
   }
   else{
      out.println("<script>alert('Your Password is Not Changed');window.location.href='../changepass.jsp';</script>");
   }
    }
    else{
       out.println("<script>alert(' Enter Inavild Password');window.location.href='../changepass.jsp';</script>");

    }

%>