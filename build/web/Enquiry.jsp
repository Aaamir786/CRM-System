<%-- 
    Document   : index
    Created on : Mar 17, 2019, 5:26:33 PM
    Author     : Lenovo pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
</script>
<style>
    .input
    {
        width:200px;
        height:30px;
        border-radius: 5px;
    }
</style>
    </head>
    <body onload="MoveSlider()">
        <form action="code/enquirycode.jsp" method="post">
            <div id="wrapper">
                <%@include file="MasterPages/header.jsp" %>
                <div id="container">
                    <%@include file="MasterPages/left.jsp" %>
                    <div id="main">
                        <table width="75%" style="border: 1px solid green;border-radius: 10px;background-color: aquamarine; margin:0px auto;margin-top:80px;color:blue;text-align: center;">
                            <tr>    
                            <td colspan="2"><h2>Enquiry Form</h2></td>
                            </tr> 
                            
                                <tr>
                                <td>
                                    Enter Your Name
                                </td>
                                <td><input class="input" type="text" name="name" required=""></td>
                            </tr>
                            <tr>
                                <td>Enter Your Address</td>
                                <td><textarea style="width: 200px;height: 80px;resize:none;" name="address" required=""></textarea></td>
                            </tr>
                            <tr>
                                <td>Select Your Gender</td>
                                <td>
                                    <input type="radio" name="gender" value="Male">Male
                                    <input type="radio" name="gender" value="Female">Female
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Contact NO.</td>
                                <td><input type="text" name="contactno" class="input" pattern="[6-9]{1}[0-9]{9}" required=""/></td>
                            </tr>
                            <tr>
                                <td>Enter Email Address</td>
                                <td><input type="text" name="emailaddress" class="input"/></td>
                            </tr>
                            <tr>
                                <td>Enter Your Message</td>
                                <td><textarea style="width: 200px;height: 80px;resize:none;" name="message" required=""></textarea></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input style="width:100px;height:30px;background-color: aqua;border-radius:10px" type="submit" value="Submit"></td>
                            </tr>
                            
                        </table>
                        
                    </div>
                                    </div>

                    <%@include file="MasterPages/footer.jsp" %>
            </div>
        </form>
    </body>
</html>
