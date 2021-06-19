/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Connect;
import java.sql.*;
/**
 *
 * @author dell pc
 */
public class ConnectionManager 
{
 Connection con=null;
 public ConnectionManager() throws ClassNotFoundException, SQLException
 {
     Class.forName("oracle.jdbc.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","ttmdb","ttmdba");
 }
  public boolean NonQuery(String query) throws SQLException
  {
      try
      {
  PreparedStatement ps=con.prepareStatement(query);
  ps.executeUpdate();
  return true;
  }
  catch(SQLException ex)
  {
      return false;
  }
      finally
      {
        //  con.close();
      }
}
  public  ResultSet SelectQuery(String qu) throws Exception
  {
  PreparedStatement ps=con.prepareStatement(qu);
 ResultSet rs= ps.executeQuery();
 return  rs;
  }
}




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
        <form  action=loginservlet  method="post" >
                    <div id="main" style="background-image: img2.jpg;">
                          
                           <table width="75%" style="border: 1px solid green;border-radius: 10px;;background-color: cyan; margin:0px auto;margin-top:80px; height:400px; color:blue;text-align: center;">
                          <tr>
                          <td><h3>$(message)</h3>
                          <h3> $(success)</h3>
                          
                          
                          
                          <tr>  
                          <td colspan="2"><h2><u>Login Here</u></h2></td>
                          </tr>
                          <tr>
                                <td>
                                    Enter User-ID
                                </td>
                                <td><input class="input" type="text" name="name" style="border-radius: 10px;"><span id="u" style="color:red;"></span></td>
                            </tr>
                             <tr>
                                <td>
                                    Enter Password
                                </td>
                                <td><input class="input" type="password" name="password" style="border-radius: 10px;"><span id="p" style="color:red; "></span></td>
                            </tr>
                            <tr>
                                <tr><td><a href="regi.jsp"> REgistration</a>
                                <td colspan="2" style="text-align: center;"><input type="submit"  name = "submit" value="login" style="background-color: aqua;height: 40px;width: 150px;border-radius: 15px;margin-bottom: 40px;"></td></tr>
                            
                           
                            </table>
                    </div>
                                    

           
        </form>
    </body>
</html>


String fname = request.getParameter("fname");
	String address = request.getParameter("address");
	String gender = request.getParameter("gender");
	String cdate = request.getParameter("cdate");
	String department = request.getParameter("department");
	String contact = request.getParameter("contact");
	String email = request.getParameter("email");
	String cpass = request.getParameter("cpass");


user.setFname(fname);
	user.setAddress(address);
	user.setGender(gender);
	user.setCdate(cdate);
	 user.setDepartment(department);
	 user.setContact(contact);
	 user.setEmail(email);
		
	 user.setCpass(cpass);


ps.setString(2, user.getFname());
		ps.setString(2, user.getAddress());
		ps.setString(2, user.getGender());
		ps.setString(2, user.getCdate());
		ps.setString(2, user.getDepartment());
		ps.setString(2, user.getContact());
		ps.setString(2, user.getEmail());
		ps.setString(2, user.getCpass());
		
	 
	
	