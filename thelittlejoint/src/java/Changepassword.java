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
import javax.servlet.http.HttpSession;
/**
 *
 * @author khedekar
 */
@WebServlet(urlPatterns = {"/Changepassword"})
public class Changepassword extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            HttpSession session=request.getSession();
            String n=(String)session.getAttribute("session_user_id");
            String oldpass=request.getParameter("oldpass");
            String newpass=request.getParameter("confirmpass");
            
            MyDb db = new MyDb();
            Connection con =db.getCon();
            Statement st=con.createStatement();
            
            ResultSet rs=st.executeQuery("select password from users where id='"+n+"';");
            rs.next();
            String oldpassword=rs.getString("password");
            if(oldpass.equals(oldpassword)){
                int res=st.executeUpdate("Update users set password='"+newpass+"' where id='"+n+"';");
                if(res!=0){
                    response.sendRedirect("index.jsp");
                }else{
                    out.println("unsuccessfull");
                }
            }
            else{
                //out.println("please enter valid old password");
                out.println("<script type=\"text/javascript\">");
                out.println("location='index.jsp';");
                out.println("alert('Please enter valid old password');");
                out.println("</script>");
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Changepassword.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
