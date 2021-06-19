<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="Connect.ConnectionManager"%>
<%@page language="java" import="java.sql.ResultSet"%>
<html>
    <head>
       
        <link href="CSS/GeneralStyle.css" rel="stylesheet"/>  
        <link href="CSS/formcss.css" rel="stylesheet"/>
  <link href="CSS/usermenu.css" rel="stylesheet"/>
       
    </head>
    <body onload="MoveSlider()">
        <form action="code/postquestioncode.jsp" method="post">
            <div id="wrapper">
                <%@include file="UserMasterPages/header.jsp"%> 
                <div id="container">
                    <div id="main" style="padding-top: 80px; background-image: url(images/d.jpg)">
                      
                      <fieldset style="width:600px; height:200px; background: #9999ff; margin:0px auto;border-radius: 20px;"> 
                          <legend align="center"><h1 style="background-size: cover;background-color: blue;color: white;font-family: calibri light;border: 2px solid black;border-radius: 5px; "> Ask Question</h1></legend>
                           <table>
                               <tr>
                                   <td style="font-size: 18px;">Ask your Question</td>
                                   <td><textarea name="question" cols="40" rows="5" style="resize: none;border-radius: 15px; "></textarea></td>
                                   
                               </tr>
                               <tr><td colspan="2" style="text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit"  value="Submit" style="background-color: aqua; height: 40px;border-radius:10px;  width: 150px; margin-top:20px;"></td></tr>
                           </table>
                           </fieldset>
                        <table style="width: 75%;margin: 0 auto;color: white;">
                            <tr style="background-color: cornflowerblue;">
                                <td style="padding: 10px; border-radius: 5px;color: blue;">Question ID</td>
                                 <td style="padding: 10px; border-radius: 5px;color: blue;">Question </td>
                                  <td style="padding: 10px; border-radius: 5px;color: blue;">Asked BY</td>
                                   <td style="padding: 10px; border-radius: 5px;color: blue;">Post Answer</td>
                                    <td style="padding: 10px; border-radius: 5px;color: blue;">View Answer</td>
                            </tr>
                            <%
                            ConnectionManager c=new ConnectionManager();
                            String Query="select * from question";
                            ResultSet res=c.SelectQuery(Query);
                            int n=1;
                            %>
                            <% while(res.next()==true)
                            { %>
                            <tr>
                                <td><%=n%></td>
                                <td><%=res.getString(2)%></td>
                                <td><%=res.getString(3)%></td>
                                <td><a href="postanswer.jsp?qid=<%=res.getInt(1)%>">Post Answer</a></td>
                                <td><a href="viewanswer.jsp?qid=<%=res.getInt(1)%>">View Answer</a></td>
                            </tr>
                            <%  n++; }%>
                        </table>
                     
                    </div>
                    </div>

                <%@include file="UserMasterPages/footer.jsp" %>
            </div>
        </form>
    </body>
</html>
