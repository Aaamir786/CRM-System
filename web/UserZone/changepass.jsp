

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <link href="CSS/GeneralStyle.css" rel="stylesheet"/>
          <link href="CSS/usermenu.css" rel="stylesheet"/>
    </head>
    <body onload="MoveSlider()">
        <form action="code/changepascode.jsp" method="post">
            <div id="wrapper">
                <%@include file="UserMasterPages/header.jsp" %> 
                <div id="container">
                   
                    <div id="main">
                        <center>
                        <fieldset style="width:600px; margin-top: 50px; height:400px; background: red;border-radius: 20px;"> 
                          <legend align="center"><h1 style="background-size: cover;background-color: blue;color: white;font-family: calibri light;border: 2px solid black;border-radius: 5px; ">Change Password</h1></legend>
                          <table width="75%" style="border: 1px solid red;border-radius: 10px; height: 300px; margin:30px auto;color:white;text-align: center;">
                          
                          <tr>
                                <td>
                                Old Password :
                                </td>
                                <td><input class="input" style="border-radius: 10px;" required="" type="password" name="pass"></td>
                            </tr>
                             <tr>
                                <td>
                                 New Password :
                                </td>
                                <td><input class="input" style="border-radius: 10px;" required="" type="password" name="cpass"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirm Password:</td>
                                <td><input class="input" style="border-radius: 10px;" required="" type="password" name="oldpass"></td>
                            </tr>
                            <tr>
                                <td></td><td><input type="submit" value="Change password" style="background-color: aqua;height: 40px;width: 150px;border-radius: 15px;margin-top: 30px;"></td></tr>
                            </tr>
                            

                            </table>
                          
                        </fieldset>
                        </center>
                    </div>
                                    </div>
                                   
                <%@include file="UserMasterPages/footer.jsp" %>
            </div>
        </form>
    </body>
</html>
