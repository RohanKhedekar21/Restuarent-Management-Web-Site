/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author khedekar
 */
@WebServlet(urlPatterns = {"/TableBooking"})
public class TableBooking extends HttpServlet {

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
            String date=request.getParameter("dateobj");
            String time=request.getParameter("time");
            String partysize=request.getParameter("Party_Size");
            
            MyDb db = new MyDb();
            Connection con =db.getCon();
            Statement st=con.createStatement();
            
            ResultSet rs=st.executeQuery("select * from users where id='"+n+"';");
            rs.next();
            String fname=rs.getString("first_name");
            String lname=rs.getString("last_name");
            String username=fname.concat(lname);
            String phoneno=rs.getString("phone_no");
            
            ResultSet rs1=st.executeQuery("select * from tbl_booking where Date_booking='"+date+"' and Time='"+time+"' ;");
            String duplicate = null;

            while(rs1.next()){
            duplicate = rs1.getString(1);
            }

            if(duplicate == null){
                int res=st.executeUpdate("insert into tbl_booking(user_id,Date_booking,Time,no_person,username,phoneno) values('"+n+"','"+date+"','"+time+"','"+partysize+"','"+username+"','"+phoneno+"');");
                if(res!=0){
                    System.out.println("insert Sucessfull");
                    response.sendRedirect("Profile_tblstatus.jsp");
                    //out.println("<script type=\"text/javascript\">");
                    //out.println("location='Profile_tblstatus.jsp';");
                    //out.println("alert('Insert Successfull');");
                    //out.println("</script>");
                } else {
                System.out.println("insert Unsucessfull");
                out.println("unsccessfull");
                }
            }
            else{
                //out.println("Table are Booked alredy please try on different time and date");
                out.println("<script type=\"text/javascript\">");
                out.println("location='Reservation.jsp';");
                out.println("alert('Table are Booked alredy please try on different time and date');");
                out.println("</script>");
            }
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(TableBooking.class.getName()).log(Level.SEVERE, null, ex);
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
