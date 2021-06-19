
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
        <form action="code/offercode.jsp" method="post" >
        <div id="wrapper">
        <%@include file="AdminMasterPages/header.jsp" %>
        <div id="container">
            <div style="width:1000px;height:50px;padding-left: 50px;">
                
            </div>
            <div style="width:950px;height:auto;min-height:500px;border-radius:20px;background-color: #66ccff;padding-left:50px;padding-top:25px;">
                 <table style="width:80%;margin:0px auto;color: maroon; ">
                            <tr style="text-align: center">
                                <td colspan="2"><h2>Offer</h2></td>
                            </tr>
                            <tr>
                                <td>Offer</td>
                                <td><input type="text" name="offer" class="input" required/></td>
                            </tr>
                            <tr>
                            <td>To Date</td>
                            <td><input type="text" name="todate" class="input" required/></td>
                            </tr>
                            <tr>
                                <td>From Date</td>
                                <td><input type="text" name="fromdate" class="input" required/></td>
                       </tr>
                       <tr>
                           <td> </td>
                           <td><input type="submit" value="Save" style="color: blue;border-radius: 10px; background-color: darkturquoise; width: 100px; height: 30px;"></td>
                       </tr>
                       
                       <tr style="margin-top: 10px; width: 800px; border:1px;background-color: cornflowerblue;">
                           <td style="padding: 10px; border-radius: 5px; color: blue;">Offer Id</td>
                           <td style="padding: 10px; border-radius: 5px; color: blue;">Offer </td>
                           <td style="padding: 10px; border-radius: 5px; color: blue;">Offer Delete</td>
                          
                       </tr>

                   <%
                   ConnectionManager cm=new ConnectionManager();
                   String query="select * from offer";
                   ResultSet rs=cm.SelectQuery(query);
                   while (rs.next())
                   {
                   %>
                   <tr>
                       <td><%=rs.getInt(1)%></td>
                       <td><%=rs.getString(2)%></td> 
                       
                       <td><a href="code/deleteoffercode.jsp?id=<%=rs.getInt(1)%>">Delete</a></td>
                    </tr>
                    <%}%>
                        </table>

                </div>
            
        </div>
        <%@include file="AdminMasterPages/footer.jsp" %>
        </div></form>
    </body>
</html>



   

