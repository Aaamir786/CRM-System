<html>
    <head>
       
        <link href="CSS/GeneralStyle.css" rel="stylesheet"/>  
        <link href="CSS/formcss.css" rel="stylesheet"/>
  <link href="CSS/usermenu.css" rel="stylesheet"/>
       
    </head>
    <body onload="MoveSlider()">
        <form action="code/feedbackcode.jsp" method="post">
            <div id="wrapper">
                <%@include file="UserMasterPages/header.jsp" %> 
                <div id="container">
                    <div id="main" style="padding-top: 80px;background-image: url(images/26.jpg)">
                      
                      <fieldset style="width:600px; height:200px; background-color: aquamarine; margin:0px auto;border-radius: 20px;"> 
                          <legend align="center"><h1 style="background-size: cover;background-color: blue;color: white;font-family: cursive; border: 2px solid black;border-radius: 5px; ">Feedback</h1></legend>
                           <table>
                               <tr>
                                   <td style="font-size: 18px;">Enter your valuble feedback</td>
                                   <td><textarea name="feedbackmsg" cols="40" rows="5" style="resize: none;border-radius: 15px; "></textarea></td>
                                   
                               </tr>
                               <tr><td colspan="2" style="text-align: center; ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit"  value="Submit" style="background-color: aqua; height: 40px;border-radius:10px;  width: 150px; margin-top:20px;"></td></tr>
                           </table>
                           </fieldset>
                     
                    </div>
                    </div>

                <%@include file="UserMasterPages/footer.jsp" %>
            </div>
        </form>
    </body>
</html>
