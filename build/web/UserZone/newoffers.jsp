

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="Connect.ConnectionManager"%>
<!DOCTYPE html>
<html>
    <head>
       
        <link href="CSS/GeneralStyle.css" rel="stylesheet"/>
        <link href="CSS/usermenu.css" rel="stylesheet"/>
        
    </head>
    <body onload="MoveSlider()">
        <form >
            <div id="wrapper">
                <%@include file="UserMasterPages/header.jsp" %> 
                <div id="container">
                           
               <table style="width:75%;margin: 0px auto; margin-top: 15px; color: blue;text-align: center ">
                            <tr >
                                <td style="background-color: cornflowerblue;">Sr.No. </td>
                                <td style="background-color: cornflowerblue;">Offer</td> 
                                <td style="background-color: cornflowerblue;">To Date</td>
                                <td style="background-color: cornflowerblue;">From Date</td>
                            </tr>
                            <%                               
                               ConnectionManager c = new ConnectionManager();
                                String Query = "select * from offer";
                                ResultSet r = c.SelectQuery(Query);
                                int n=1;
                                while (r.next() == true) {
                            %>
                            <tr>
                                <td><%=n%> </td>
                                <td><%=r.getString(2) %></td> 
                                <td><%=r.getString(3) %></td>
                                <td><%=r.getString(4) %></td>
                            </tr>
                            <%n++; }%>
                        </table>
                         </div>
                <%@include file="UserMasterPages/footer.jsp" %>
               
       
                </div>
        </form>
    </body>
</html>
