<%-- 
    Document   : AdminHome
    Created on : 9 Apr, 2019, 6:04:34 PM
    Author     : User
--%>

<%@page language="java" import="Connect.ConnectionManager" %>
<%@page language="java" import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="AdminCSS/adminstyle.css" rel="stylesheet"/>
        <link href="AdminCSS/usermenu.css" rel="stylesheet"/>
    </head>
    <body>
        <form action="code/managefeedback.jsp" method="post">
        <div id="wrapper">
        <%@include file="AdminMasterPages/header.jsp"%>
        <div id="container">
            
            <div style="width:1000px;height:50px;">
                 </div>
           <div style="width:950px;height:auto;min-height:500px;border-radius:20px;background-color: aquamarine;padding-left:50px;padding-top:25px;">
               <center>
                   <h1>Manage Complain</h1>
                <table style="padding-top: 50px; border: 1px; width: 80%;">
                    <tr style="background-color: cornflowerblue;">
                    <td style="padding: 10px; border-radius: 5px;color: blue;">complain ID</td> 
                    <td style="padding: 10px; border-radius: 5px;color: blue;">Name</td> 
                    <td style="padding: 10px; border-radius: 5px;color: blue;">Subject</td> 
                    <td style="padding: 10px; border-radius: 5px;color: blue;">Complain Text</td>
                    <td style="padding: 10px; border-radius: 5px;color: blue;">Delete</td>
                    </tr>
                    
                     <%
                            ConnectionManager c=new ConnectionManager();
                            ResultSet rs=c.SelectQuery("select complainid,name,subject,complainmsg from complain ");
                            while(rs.next())
                            {
                            %>
                            <tr>
                                <td><%=rs.getInt(1)%></td>
                                <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                <td><%=rs.getString(4)%></td>
                                <td><a href="code/deletecomplaincode.jsp?id=<%=rs.getInt(1)%>">Delete</a></td>
                               
                            </tr>
                            <%}%>
                            
            </table>
            </center>
            </div>
            
        </div>
        <%@include file="AdminMasterPages/footer.jsp" %>
        </div></form>
    </body>
</html>



   

