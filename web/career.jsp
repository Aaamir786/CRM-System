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
                    <div id="main">
                        
                    </div>
                                    </div>

                    <%@include file="MasterPages/footer.jsp" %>
            </div>
        </form>
    </body>
</html>
