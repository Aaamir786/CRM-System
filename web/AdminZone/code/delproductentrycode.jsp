
<%@page import="java.io.File"%>
<%@page language="Java" import="Connect.ConnectionManager"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
ConnectionManager cm=new ConnectionManager();
String del="delete from product where proid="+id+"";
String img=request.getParameter("img");
out.println(img);
File file=new File(request.getRealPath("/productpic"),img);


if(cm.NonQuery(del)==true && file.delete()==true){
        out.println("<script>alert('product Deleted');window.location.href='../productEntery.jsp';</script>");

}
else{
        out.println("<script>alert('product not Deleted');window.location.href='../productEntery.jsp';</script>");

}
        
%>