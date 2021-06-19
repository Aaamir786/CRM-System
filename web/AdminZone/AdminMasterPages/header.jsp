

<%
    if (session.getAttribute("adminuserid") == null && session.getAttribute("adminuserid") == "") {

        response.sendRedirect("../login.jsp");
    }
%>

<div id="header">
    <div id="logo">
        <img src="<%=request.getContextPath()%>/images/images (5)_1.jpg" width="150" height="150" />
    </div>
    <div id="banner">
        CUSTOMER RELATIONSHIP MANAGEMENT
    </div>
</div>
            
<div id="menu2" style="margin-top: -20px;">

    <ul>
        <li><a href="adminhome.jsp">Add Notification</a></li>
        <li><a href="manageenquiry.jsp">Enquiry</a></li>
        <li><a href="productEntery.jsp">Product</a></li>
        <li><a href="changepassword.jsp">Setting</a>
            <ul class="subMenu">
                <li style="width: 120px; height: 35px;"><a href="managecomplain.jsp">Manage Complain</a></li>   
                <li style="width: 120px; height: 20px;"><a href="addoffer.jsp">Offer</a></li>
                <li style="width: 120px; height: 35px;"><a href="manageenquiry.jsp">Manage Enquiry</a></li>
            </ul>
        </li>
        <li><a href="logout.jsp">Log Out</a></li>
        <li style="width: 140px;"><a href="managefeedback.jsp">Manage Feedback</a></li>
        
            
        
    </ul>
</div>
