/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connect;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet(name = "productsaved", urlPatterns = {"/productsaved"})
public class productsaved extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String proname = request.getParameter("proname");
        String prodesc = request.getParameter("prodesc");
        java.util.Date d = new java.util.Date();
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        String date = sdf.format(d);
        Part filepart = request.getPart("propic");
        String filename = filepart.getSubmittedFileName();
        InputStream fileContaint = filepart.getInputStream();
        int pid = 0;
        String q = "select nvl(max(proid),0)+1 from product";
        
    

        
        try {
           
        } catch (Exception ex) {
            out.println("<script>alert('Database No Connect');window.location.href='AdminZone/productEntery.jsp';</script>");
        }
        try {
         ConnectionManager    cm = new ConnectionManager();
           ResultSet rs = cm.SelectQuery(q);
            rs.next();
            pid = rs.getInt(1);
            String q1 = "insert into product values('" + pid + "','" + proname + "','" + prodesc + "','" + date + "','" + filename + "')";
            ///out.println(q1);
            if (cm.NonQuery(q1) == true) {
             File uplaod=new File(request.getRealPath("/productpic"),filename);
             Files.copy(fileContaint, uplaod.toPath());
                             out.println("<script>alert('Product Saved');window.location.href='AdminZone/productEntery.jsp';</script>");
            } else {
                 out.println("<script>alert('Product is not Saved');window.location.href='AdminZone/productEntery.jsp';</script>");

            }

        } catch (Exception ex) {
            out.println("<script>alert('Database Error');window.location.href='AdminZone/productEntery.jsp';</script>");

        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
