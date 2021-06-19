<%-- 
    Document   : AdminHome
    Created on : 9 Apr, 2019, 6:04:34 PM
    Author     : User
--%>

<%@page language="java" import="Connect.ConnectionManager" %>
<%@page language="java" import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="AdminCSS/adminstyle.css" rel="stylesheet"/>
        <link href="AdminCSS/usermenu.css" rel="stylesheet"/>
    </head>
    <body>
        <form action="code/notification.jsp" method="post">
        <div id="wrapper">
        <%@include file="AdminMasterPages/header.jsp" %>
        <div id="container">
            <div style="width:1000px;height:50px;">
                
            </div>
            
            <div style="width:950px;height:auto;min-height:500px;border-radius:20px;background-color: #66ccff;padding-left:50px;padding-top:25px;">
                <tr><textarea style="width:800px;height:100px;padding:30px;resize:none; border-radius: 20px" name="notification"/></textarea>
             <input type="submit"style="width: 120px;height:30px;background-color:chartreuse;border-radius: 10px;" value="Add Notification">
            <center>
                <table style="color: darkorchid; padding: 20px; width: 80%">
                <tr style="background-color: coral;">
                    <td style="padding: 10px; border-radius: 5px;">Notification ID</td>
                <td style="padding: 10px; border-radius: 5px;">Notification Message</td>
                <td style="padding: 10px; border-radius: 5px;">Delete</td>
                <td style="padding: 10px; border-radius: 5px;">Update</td>
                </tr>
                <%
                ConnectionManager Cm=new ConnectionManager();
                String Query="select * from notification";
                ResultSet rs=Cm.SelectQuery(Query);
                while(rs.next())
                {
                %>    
                <tr>
                    <td><%=rs.getInt(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><a href="code/notificationdelcode.jsp?nid=<%=rs.getString(1)%>">Delete</a></td>
                    <td><a href="upnotificationcode.jsp?id=<%=rs.getString(1)%>">Update</a></td>
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



   

