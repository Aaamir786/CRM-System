<%-- 
    Document   : index
    Created on : Mar 17, 2019, 5:26:33 PM
    Author     : Lenove pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="Connect.CaptchaGenerator" %>
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
        height:25px;
        border-radius: 5px;
    }
    </style>
    </head>
    <body onload="MoveSlider()">
        <form action="code/registrationcode.jsp" method="post">
              <div id="wrapper">
                <%@include file="MasterPages/header.jsp" %> 
                <div id="container">
                    <%@include file="MasterPages/regleft.jsp" %>
                    <div id="main" style="height: 700px;">
                        <table width="75%" style="border: 1px solid green;border-radius: 20px;background-color: darkturquoise; margin:0px auto;margin-top:30px;color:white;text-align: center;">
                          <tr>  
                          <td colspan="2"><h2>Registration Here</h2></td>
                          </tr>
                          <tr>
                                <td>
                                    Enter Your Name
                                </td>
                                <td><input type="text" style="border-radius: 10px;" type="text" name="name" pattern="[A-Za-z\s]{2,}" required="" /></td>
                            </tr>
                             <tr>
                                <td>
                                    Enter Father Name
                                </td>
                                <td><input type="text" style="border-radius: 10px;" type="text" name="fname" pattern="[A-Za-z\s]{2,}" required=""></td>
                            </tr>
                             <tr>
                                <td>Enter Your Address</td>
                                <td><textarea style="width: 200px;height: 80px;resize:none;" style="border-radius: 10px;" name="address" required=""></textarea></td>
                            </tr>
                            <tr>
                                <td>Select Your Gender</td>
                                <td>
                                    <input type="radio" name="gender" value="Male">Male
                                    <input type="radio" name="gender" value="Female">Female
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Enter Connect Date
                                </td>
                                <td><input class="input" style="border-radius: 10px;" type="date" name="cdate"required=""></td>
                            </tr>
                             <tr>
                                <td>
                                    Concern Department
                                </td>
                                <td>
                             <select name="department" class="input" style="border-radius: 10px;">
                                 <option>-Select-</option>
                                 <option>HR</option>
                                 <option>Development</option>
                                 <option>Testing</option>
                                 <option>Production</option>
                                 <option>Services</option>
                                 <option>Management</option>
                             </select>
                                </td>
                                <tr>
                                <td>
                                    Enter Contact-No.
                                </td>
                                <td><input type="text" style="border-radius: 10px;" name="contact" class="input" pattern="[6-9]{1}[0-9]{9}"required=""></td>
                            </tr>
                            <tr>
                                <td>Enter Email Address</td>
                                <td><input type="emailaddress" style="border-radius: 10px;"  name="emailaddress" class="input"required=""/></td>
                            </tr>
                            <tr>
                                <td>Enter Password</td>
                                <td><input type="password" style="border-radius: 10px;" name="password" class="input"required=""/></td>
                            </tr>
                            <tr>
                                <td>Confirm  Password</td>
                                <td><input type="password" style="border-radius: 10px;" name="cpass" class="input"required=""/></td>
                            </tr>
                            <tr>
                                <td>Captcha code</td>
                                <%
                                    CaptchaGenerator C=new CaptchaGenerator();
                                    String capcode=C.GetCode();
                                    
                                    %>
                                    <td><h3><strike><%=capcode%></strike></h3><input type="hidden" name="ccode"value="<%=capcode%>"/></td>
                                </tr>
                                <tr>
                                    <td>Enter Captcha Code</td>
                                    <td><input class="input" style="border-radius: 10px;" name="code" class="input"</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <tr><td colspan="2" style="text-align: center; "><input type="submit"  value="Submit" style="background-color: aqua; height: 40px;border-radius:10px;  width: 150px; margin-top:20px;"></td></tr>
                                </tr>
                            </table>
                        
                    </div>
                                    </div>

                    <%@include file="MasterPages/footer.jsp" %>
            </div>
        </form>
    </body>
</html>
