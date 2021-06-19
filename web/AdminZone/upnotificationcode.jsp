
<%@page language="java" import="Connect.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="AdminCSS/adminstyle.css" rel="stylesheet"/>
        <link href="AdminCSS/usermenu.css" rel="stylesheet"/>
    </head>
    <body>
        <form action="code/updatenotificationcode.jsp" method="post">
        <div id="wrapper">
        <%@include file="AdminMasterPages/header.jsp" %>
        <div id="container">
            <div style="width:1000px;height:50px;padding-left: 50px;">
                
            </div>
            <div style="width:950px;height:auto;min-height:500px;border-radius:20px;background-color: #66ccff;padding-left:50px;padding-top:25px;">
                <%
                ConnectionManager cm=new ConnectionManager();
                ResultSet rs=cm.SelectQuery("select * from notification where id='"+request.getParameter("id")+"'");
                rs.next();   
                %>
                <textarea style="width:800px;height:100px;padding:30px;border-radius: 20px;resize:none;" name="notificationmsg"/> <%=rs.getString(2)%></textarea></br>
              <input type="submit"style="width: 120px;height:30px;background-color: blueviolet;border-radius: 10px;" value="Update Notification">
            <td><input type="hidden" name="id" value="<%=request.getParameter("id")%>"/></td>
            </div>
            
        </div>
        <%@include file="AdminMasterPages/footer.jsp" %>
        </div></form>
    </body>
</html>



   

