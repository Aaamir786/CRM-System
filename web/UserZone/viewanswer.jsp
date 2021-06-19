
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="Java" import="Connect.ConnectionManager"%>



<html>
    <head>
      
        <link href="CSS/formcss.css" type="text/css" rel="stylesheet" />
        <link href="CSS/GeneralStyle.css" type="text/css" rel="stylesheet" />
         <link href="CSS/usermenu.css" rel="stylesheet"/>
         <style>
             #anstab{
                 border: 4px solid blue;
                 margin: 0 auto;
                 background-color: yellow;
             }
             #anstab tr th{
                 background-color: deepskyblue;
                 color: black;
             }
             #anstab tr td{
                 background-color: lightgreen;
                 color: navy;
             }
         </style>
    </head>
    <body>

     <form>
            <div id="wrapper">
                <%@include file="UserMasterPages/header.jsp" %> 
                <div id="container">
                    <div id="main" style="padding-top: 80px;height: 600; width: 100%;min-height: 150px;background-image: url(images/dfa.jpg) ">
                        <table style="color: white; width: 600px;" id="anstab">
                            <tr>
                                <th><u><h2>Answer</h2></u></th>
                        <th><u><h2>Answered By</h2></u></th>
                            </tr>
                            <%
                            ConnectionManager c=new ConnectionManager();
                            String query12="select * from answer where qid="+Integer.parseInt(request.getParameter("qid"))+"";
                            ResultSet r=c.SelectQuery(query12);
                            while(r.next()==true)
                            {
                                %>
                                <tr>
                                    <td><%=r.getString(2)%></td>
                                    <td><%=r.getString(3)%></td>
                                </tr>
                            <%}%>
                             </table>
                            </div>
                           </div>
                <%@include file="UserMasterPages/footer.jsp" %>
            </div>
        </form>
    </body>
</html>
