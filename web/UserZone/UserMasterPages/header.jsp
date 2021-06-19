
<%@page import="java.sql.ResultSet"%>
<%@page import="Connect.ConnectionManager"%>
<%
    if (session.getAttribute("userid") == null && session.getAttribute("userid") == "") {

        response.sendRedirect("../login.jsp");
    }
%>
<%@page import="java.text.SimpleDateFormat"%>
<div id="header">
    <div id="logo">
        <img src="../images/images (5)_1.jpg" width="150" height="150" />
    </div>
    <div id="banner">
        <span> CUSTOMER RELATIONSHIP MANAGEMENT</span>
    </div>
</div>
<a href="header.jsp"></a>
<div id="dt">
    <div id="date" style="padding-top: 10px;">
        <center>
            <%                java.util.Date d = new java.util.Date();
                SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
                String date = sdf.format(d);
            %>
            <span style="color: navy;font-size: 21pt;"><b><%=date%></b></span>
        </center>
    </div>
    <div id="name" style="padding-top: 10px;">
        <%
            ConnectionManager CM = new ConnectionManager();
            String query = "select name from registration where emailaddress='" + session.getAttribute("userid") + "'";
            ResultSet rs = CM.SelectQuery(query);
            String name = "";
            if (rs.next()) {
                name = rs.getString(1);
                session.setAttribute("username", name);
            }
        %> 
        <span style="color: darkred;font-size: 21pt;"><b><%=name%></b></span>
    </div>
</div>
<div id="menu2" style="margin-top: -20px;">

    <ul>
        <li><a href="UserHome.jsp">Home</a></li>
        <li><a href="postquestion.jsp">Discussion</a></li>
        <li><a href="feedback.jsp">Feedback</a></li>
        <li><a href="complain.jsp">Complain</a></li>
        <li><a href="#">Product</a>
        <ul class="subMenu">
                <li><a href="product.jsp">Product</a></li>
                <li><a href="newoffers.jsp">New Offers</a></li>
        </ul>
        </li>
        <li><a href="profile.jsp">Profile</a></li>
        <li><a href="#">Setting</a>
            <ul class="subMenu">
                <li><a href="notification.jsp">Notification</a></li>
                <li style="height: 40px;"><a href="changepass.jsp" >Change Password</a></li>
                <li><a href="logout.jsp">Log Out</a></li>
               
            </ul>
        </li>
    </ul>
</div>
