<%-- 
    Document   : index
    Created on : Mar 17, 2016, 5:26:33 PM
    Author     : dell pc
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
    </head>
    <body onload="MoveSlider()">
        <form>
            <div id="wrapper">
                <%@include file="MasterPages/header.jsp" %> 
                <div id="container">
                    <%@include file="MasterPages/left.jsp" %>
                    <div id="main" style="font-size: 15pt; font-family: cursive;;color: chartreuse; background-image: url(images/32.jpg)" >
                         <center>
                        <fieldset style="background-color: darkcyan;background: white;width:500px; border:2px solid red; margin-top: 20px; border-radius: 20px;">
                           <legend align="center"><h2 style="background-size: cover; background-color: blue;font-family: calibri light; color:white;border: 2px solid black;border-radius: 5px; ">About US</h2></legend>
                       <li> This  project  is  responding  to  the  requirement  of  CRM  Solution  Development for Elmech engineer. 
Developing  a  Web  based  Online  Interface  that  managese very  aspect of  Elmech’s  customer  interactions, 
provides  powerful  insight  into  the  performance  of  your business and your staff, and drives user productivity. </li> </br>

                      <li style="color: darkred;"> Through this project we will provide the services for design,
                          development and testing of web based  online  solution  for  Elmech engineer.</li></br>
                      <li style="color: cyan;">The objective  of  our  efforts  is  to  present  a comprehensive  and  an  iterative  approach  in  building  strong,
 flexible  and  full  featured  CRM Solution for Elmech engineer.</li></br>
                      </center>
                        </fieldset>
</div>
                    
                                    </div>

                    <%@include file="MasterPages/footer.jsp" %>
            </div>
        </form>
    </body>
</html>
