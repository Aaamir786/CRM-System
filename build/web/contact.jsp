

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
                    <div id="main" style="color: aqua; font-size: 40; font-style: italic; background-image: url(images/n.jpg);">
                         <div class="contact_holder">
                            
                           <div class="contact">Contact us</div>
                           
                           <div class="contact_holder_page">
                               
                               <ul>Email-ID
                                   <li>rkj0rkj@gmail.com</li>
                                   <li>akkiways@gmail.com</li>
                                   <li>shubhampandey2809@gmail.com</li>
                                   <li>crm@gmail.com</li>
                            
                               </ul>
                             
                               <div class="contact_holder_page">
                           <ul> Contact_No.
                           <li> :-8545053909</li>
                          <li>  :-8604205220</li>
                           <li> :-8177022165</li>
                           <li> :-9471217070</li>
                             </ul>  
                                   <ul> Address
                                       <li>Goel Enclave, Phase 1, Flat No. 202</br> Opposite BBD University,</br> Faizabad Road, (LUCKNOW) </li></br>
                                       <li>Ramgarhwa Bazar,</br>East Champaran</br>Bihar,(Patna)</li>
                                       </ul>
                                   
                           </div>
                               
                                          
                               </div>
                    </div>
                                    </div>

                    <%@include file="MasterPages/footer.jsp" %>
            </div>
        </form>
    </body>
</html>
