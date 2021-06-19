
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
        <form action="../productsaved" method="post" enctype="multipart/form-data">
        <div id="wrapper">
        <%@include file="AdminMasterPages/header.jsp" %>
        <div id="container">
            <div style="width:1000px;height:50px;padding-left: 50px;">
                
            </div>
            <div style="width:950px;height:auto;min-height:500px;border-radius:20px;background-color: #66ccff;padding-left:50px;padding-top:25px;">
                <table>
                    <tr>
                        <td>Product Name :</td>  
                        <td><input name="proname"></td>

                    </tr>
                    <tr>
                        <td>Product Description:</td>
                        <td><input name="prodesc"></td>
                    </tr>
                    <tr>
                        <td>Product Pic :</td>
                        <td><input name="propic" type="file"></td>
                    </tr>
                    <tr>
                       
                        <td colspan="2" align="center"><input type="submit" value="Submit" style="color: blue;border-radius: 10px; background-color: darkturquoise; width: 80px; height: 25px;"></td>
                    </tr>
                </table>
                <table style="width:80%;">
                <thead>
                    <tr style="background-color: cornflowerblue;">
                        <th style="padding: 10px; border-radius: 5px;color: blue;">S.no</th>
                        <th style="padding: 10px; border-radius: 5px;color: blue;">Product name</th>
                        <th style="padding: 10px; border-radius: 5px;color: blue;">Product image</th>
                        <th style="padding: 10px; border-radius: 5px;color: blue;">Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    ConnectionManager cm=new ConnectionManager();
                    String prod="select * from product";
                    ResultSet rspro=cm.SelectQuery(prod);
                    int i=1;
                    while(rspro.next()){
                    
                    %>
                    <tr>
                    <td><%=i%></td>
                    <td><%=rspro.getString(2)%></td>
                    
                    <td><img src="<%=request.getContextPath()%>/productpic/<%=rspro.getString(5)%>" width="50" height="50"/></td>
                    <td><a href="code/delproductentrycode.jsp?id=<%=rspro.getString(1)%>&img=<%=rspro.getString(5)%>">Delete</a></td>

                    </tr>
                    
                    <% i++;
                    }%>
                </tbody>
            </table>
                </div>
            
        </div>
        <%@include file="AdminMasterPages/footer.jsp" %>
        </div></form>
    </body>
</html>



   

