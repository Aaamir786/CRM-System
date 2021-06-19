<html>
    <head>
       
        <link href="CSS/GeneralStyle.css" rel="stylesheet"/>
          <link href="CSS/usermenu.css" rel="stylesheet"/>
    </head>
    <body onload="MoveSlider()">
        <form action="code/complaincode.jsp" method="post">
            <div id="wrapper">
                <%@include file="UserMasterPages/header.jsp" %> 
                <div id="container">
                   <div id="main" style="padding-top: 60px;">
                       <center>
                       <fieldset style="background-color: darkturquoise;width:500px; border:2px solid black;border-radius: 20px;">
                           <legend align="center"><h1 style="background-size: cover; margin: 2px solid black;background-color: blue;font-family: calibri light; color:white;border: 2px solid black;border-radius: 5px; ">Submit Your Complain</h1></legend>
                       <div style="height: 300px; width: 500px;margin-top:70px">
                           <table>
                               
                               <tr>
                                   <td>Enter The Subject</td>
                                   <td><textarea name="subject" cols="40" rows="5" style="resize: none;border-radius: 15px;"></textarea></td>
                                   
                               </tr>
                               <tr>
                                   <td></td>
                               </tr>
                                <tr>
                                   <td>Enter The Complain</td>
                                   <td><textarea name="complainmsg" cols="40" rows="5" style="resize: none; border-radius: 15px; "></textarea></td>
                                   
                               </tr>
                               <tr><td colspan="2" style="text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" style="background-color: aqua;height: 40px;width: 150px;border-radius: 15px;margin-top: 30px;"></td></tr>
                        
                           </table>
                       </div>
                           </fieldset>
                       </center>
                
                       </div>
                    </div>
                    

                <%@include file="UserMasterPages/footer.jsp" %>
            </div>
            
        </form>
    </body>
</html>
 