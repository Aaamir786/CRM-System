

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
       
            <div id="wrapper">
                <%@include file="UserMasterPages/header.jsp" %> 
                <div id="container" >

                    <div class="bd">
                        <form action="product.jsp" method="post">
                            <table style="margin: 0px auto;width: 80%;">
                            <tr>
                                <td align="right">Search Product : </td>
                                <td colspan="2" align="left">
                                    <input type="text" name="search" style="width: 250px;" />
                                    <input type="submit" value="Search" style="text-align: left;"  />
                                </td>
                                
                            </tr>
                        </table>
                        </form>
                        <table style="width:80%;margin:0px auto;color: maroon; text-align: center ">
                            <tr >
                                <td>Sr.No. </td>
                                <td>Product Name</td> 
                                <td>Product Description</td>
                                <td>Product Pic</td>
                            </tr>
                            <%                                ConnectionManager c = new ConnectionManager();
                                String Query = "";
                                if(request.getParameter("search")==null )
                                {
                                Query = "select * from product";
                                }
                                else if(request.getParameter("search")=="" )
                                {
                                Query = "select * from product";
                                }
                                else
                                {
                                Query = "select * from product where lower(proname) like '%"+request.getParameter("search").toLowerCase()+"%'";
                                }
                                ResultSet r = c.SelectQuery(Query);
                                int n = 1;
                                while (r.next() == true) {
                            %>
                            <tr>
                                <td><%=n%> </td>
                                <td><%=r.getString(2)%></td> 
                                <td><%=r.getString(3)%></td>
                                <td><img src="http://localhost:8084/Customer_relastionship_management/productpic/<%=r.getString(5)%>" width="50px" height="50px"></td>
                            </tr>
                            <% n++;
                                }%>
                        </table>
                    </div>     
                </div>

                <%@include file="UserMasterPages/footer.jsp" %>
            </div>
        
    </body>
</html>
