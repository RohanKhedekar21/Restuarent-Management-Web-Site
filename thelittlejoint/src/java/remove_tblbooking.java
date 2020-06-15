/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author khedekar
 */
@WebServlet(urlPatterns = {"/remove_tblbooking"})
public class remove_tblbooking extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            String id=request.getParameter("ids");
            
            MyDb db = new MyDb();
            Connection con =db.getCon();
            Statement st=con.createStatement();
            int res=st.executeUpdate("delete from tbl_booking where booking_id in ("+id+"); ");
            if(res!=0){
                out.println("delete Sucessfull");
                response.sendRedirect("Profile_tblstatus.jsp");
                //out.println("<script type=\"text/javascript\">");
                //out.println("location='Profile_tblstatus.jsp';");
                //out.println("alert('Your table booking successfully cancel');");
                //out.println("</script>");
            } else {
                out.println("delete Unsucessfull");
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(remove_tblbooking.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}

