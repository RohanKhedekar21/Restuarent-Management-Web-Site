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
import javax.servlet.RequestDispatcher;
/**
 *
 * @author khedekar
 */
@WebServlet(urlPatterns = {"/UpdateDetails"})
public class UpdateDetails extends HttpServlet {

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
            String phno=request.getParameter("phno");
            
            int rmno=Integer.parseInt(request.getParameter("roomno"));
            String bildno=request.getParameter("buildingarea");
            String city=request.getParameter("city");
            String landmark=request.getParameter("landmark");
            String altmobile=request.getParameter("altmobile");
            String addtype=request.getParameter("addtype");
            int pincode=Integer.parseInt(request.getParameter("pincode"));
            
            MyDb db=new MyDb();
            Connection con=db.getCon();
            Statement st=con.createStatement();
            int res=st.executeUpdate("UPDATE users SET room_flat_no='"+rmno+"',building_area='"+bildno+"',city='"+city+"',landmark='"+landmark+"',alternate_no='"+altmobile+"',address_type='"+addtype+"',pincode='"+pincode+"' WHERE phone_no='"+phno+"' ;");
            if(res!=0){
                out.println("<script type=\"text/javascript\">");
                out.println("location='Profile_updatedetails.jsp';");
                out.println("alert('Address Updated');");
                out.println("</script>");
            }else{
                out.println("insert unsuccessfull");
            }
        } catch (Exception ex) {
            System.out.println(ex);
            Logger.getLogger(UpdateDetails.class.getName()).log(Level.SEVERE, null, ex);
            
        }
    }
}
