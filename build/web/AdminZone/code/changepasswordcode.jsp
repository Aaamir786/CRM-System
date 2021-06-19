<%@page import="Connect.ConnectionManager"%>
<%

    String oldpass=request.getParameter("oldpass");  
    String npass=request.getParameter("npass");
    String cpass=request.getParameter("cpass");
    if(npass.equals(cpass))
    {
   String query="update login set passwd='"+npass+"' where userid='"+session.getAttribute("adminuserid") +"' and passwd='"+oldpass+"'";
   ConnectionManager  Cm=new ConnectionManager();
            if(Cm.NonQuery(query))
                {
    out.println("<script>alert('Your Password Changed');window.location.href='../changepassword.jsp';</script>");
                 }
          else{
       out.println("<script>alert('Password not changed');window.location.href='../changepassword.jsp';</script>");

    }
    }
    else{
    
           out.println("<script>alert('old Password not matched');window.location.href='../changepassword.jsp';</script>");

    }
%>