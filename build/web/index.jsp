<%-- 
    Document   : index
    Created on : Nov 2, 2018, 5:26:33 PM
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
    </head>
    <body onload="MoveSlider()">
        <form>
            <div id="wrapper">
                <%@include file="MasterPages/header.jsp" %> 
                <div id="container">
                    <%@include file="MasterPages/left.jsp" %>
                    <div id="main" style=" background-image: url(images/img1.jpg);">
                        <center>
                        <fieldset style="background-color: darkcyan;background: darkorchid;width:500px; border:2px solid black; margin-top: 20px; border-radius: 20px;">                           <legend align="center"><h2 style="background-size: cover; background-color: deeppink;font-family: calibri light; color:white;border: 2px solid black;border-radius: 5px; ">Customer Relationship Management</h2></legend>
                       <div id="text" style="height:460px; width:100%;color: black; font-size: 10; font-style: italic;">
                         
                           <h2 style="color: darkturquoise;"><u>Basic Information for CRM</u></h2>
                             <b><u style="color: aqua;">  Leads </u></b>
                             <p style="color: black;">Leads are the individuals or representatives of organizations who show interest in our products or services.
Create Leader Import Leads</p>
<b><u style="color: aqua;">Contacts</u></b>
<p style="color: chartreuse;">Contacts are the people in a company with whom you communicate and interact in pursuit of a business opportunity.
Create Contactor Import Contacts</p>
<b><u style="color: aqua;">Accounts</u></b>
<p style="color: yellow;">Accounts are companies or department within a company, with which you make business dealings.
    Create Account or Import Accounts</p>
<b><u style="color: aqua;">Activities</u></b>
<p style="color: chartreuse;">Activities are a list or register of tasks, events, and calls associated to the CRM records pertaining to different modules.
    Create Task or Create Event or Create Call</p>

                       </div>
                         </fieldset>  </center></div></fieldset>
                    </div>
                                   

                    <%@include file="MasterPages/footer.jsp" %>
            </div>
        </form>
    </body>
</html>
