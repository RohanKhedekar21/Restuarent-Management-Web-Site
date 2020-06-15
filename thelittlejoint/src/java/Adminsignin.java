/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author khedekar
 */
@WebServlet(urlPatterns = {"/Adminsignin"})
public class Adminsignin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            
            MyDb db = new MyDb();
            Connection con =db.getCon();
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select username,password from adminlogin where username='"+username+"' and password='"+password+"'");
            if(rs.next()){
                response.sendRedirect("Admin_page.jsp");
            }
            else{
                //out.println("<h1>Please check the Username and Password</h1>");
                out.println("<script type=\"text/javascript\">");
                out.println("location='Admin_signin.jsp';");
                out.println("alert('Username or password incorrect');");
                out.println("</script>");
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Adminsignin.class.getName()).log(Level.SEVERE, null, ex);
        }  
            
        }
    }



