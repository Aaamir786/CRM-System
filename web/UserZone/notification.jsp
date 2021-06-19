<html>
    <head>
       
        <link href="CSS/GeneralStyle.css" rel="stylesheet"/>  
        <link href="CSS/formcss.css" rel="stylesheet"/>
  <link href="CSS/usermenu.css" rel="stylesheet"/>
       
    </head>
    <body onload="MoveSlider()">
        <form action="code/notification.jsp" method="post">
            <div id="wrapper">
                <%@include file="UserMasterPages/header.jsp" %> 
                <div id="container">
                    <div id="main" style="padding-top: 80px;">
                      
                      <fieldset style="width:75%; height:75%; background: darkturquoise; margin:0px auto;border-radius: 20px;"> 
                          <legend align="center"><h1 style="background-size: cover;background-color: blue;color: white;font-family: calibri light;border: 2px solid black;border-radius: 5px; ">Notification</h1></legend>
                           <table style="width:75%; height: 75%;text-align: center; padding-bottom: 200px;">
                               <tr>
                                   <th>Sr.No</th> 
                                   <th>Notification Text</th>
                               </tr>
                               <%
                               int n=1;
                                ConnectionManager c=new ConnectionManager();
                            String query123="select * from notification";
                            ResultSet r=c.SelectQuery(query123);
                               while(r.next())
                               {
                               %>
                               <tr>
                                   <td><%=n%></td>   
                                   <td><%=r.getString(2) %></td>

                               </tr>
                               <% n++; } %>
                           </table>
                           </fieldset>
                     
                    </div>
                    </div>

                <%@include file="UserMasterPages/footer.jsp" %>
            </div>
        </form>
    </body>
</html>
