<%-- 
    Document   : index
    Created on : Mar 17, 2019, 5:26:33 PM
    Author     : Lenovo pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <style>
    .input
    {
        width:200px;
        height:30px;
        border-radius: 5px;
        
    }
    
</style>
        <link href="CSS/GeneralStyle.css" rel="stylesheet"/>
        <script>var imgno=1;
function MoveSlider()
{
  if(imgno>6)
  imgno=1;
  document.getElementById("slide").src="images/"+imgno+".jpg";
  imgno++;
  window.setTimeout("MoveSlider()",2000);
}
function validate()
{
    var emailid=document.forms["login"]["uid"].value;
    var pwd=document.forms["login"]["pass"].value;
        
    if(emailid=="" || emailid==null)
    {
        document.getElementById("u").innerHTML="*";
        return false;        
    }
    else
    {
      document.getElementById("u").innerHTML="";      
    }
    if(pwd=="" || pwd==null)
    {
        document.getElementById("p").innerHTML="*";
        return false;
    }
    else
    {
      document.getElementById("p").innerHTML="";      
    }
}
</script>
    </head>
    <body onload="MoveSlider()">
        <form name="login" action="code/logincode.jsp" method="post" onsubmit="return validate();">
            <div id="wrapper">
                <%@include file="MasterPages/header.jsp" %> 
                <div id="container">
                    <%@include file="MasterPages/left.jsp" %>
                    <div id="main" style="background-image: url(images/img2.jpg);">
                          
                           <table width="75%" style="border: 1px solid green;border-radius: 10px;;background-color: cyan; margin:0px auto;margin-top:80px; height:400px; color:blue;text-align: center;">
                          <tr>  
                          <td colspan="2"><h2><u>Login Here</u></h2></td>
                          </tr>
                          <tr>
                                <td>
                                    Enter User-ID
                                </td>
                                <td><input class="input" type="text" name="uid" style="border-radius: 10px;"><span id="u" style="color:red;"></span></td>
                            </tr>
                             <tr>
                                <td>
                                    Enter Password
                                </td>
                                <td><input class="input" type="password" name="pass" style="border-radius: 10px;"><span id="p" style="color:red; "></span></td>
                            </tr>
                            <tr>
                                <tr><td colspan="2" style="text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" style="background-color: aqua;height: 40px;width: 150px;border-radius: 15px;margin-bottom: 40px;"></td></tr>
                            </tr>
                            </table>
                    </div>
                                    </div>

                    <%@include file="MasterPages/footer.jsp" %>
            </div>
        </form>
    </body>
</html>
