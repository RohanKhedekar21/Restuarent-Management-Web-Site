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
import java.util.ArrayList;
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
@WebServlet(urlPatterns = {"/ConfirmOrder"})
public class ConfirmOrder extends HttpServlet {

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
            
            HttpSession session=request.getSession();
            String userId=(String)session.getAttribute("session_user_id");
            
            HttpSession session2=request.getSession();
            int orderidd =(Integer)session2.getAttribute("orderID");
            
            int orderprice=Integer.parseInt(request.getParameter("value"));
            
            String deliverytype=request.getParameter("deliveryType");
            
            
            MyDb db = new MyDb();
            Connection con =db.getCon();
            Statement st=con.createStatement();
            
            ResultSet rs=st.executeQuery("select * from users where id='"+userId+"';");
            rs.next();
                String userfname=rs.getString("first_name");
                String userlname=rs.getString("last_name");
                String fullname=userfname.concat(" "+userlname);
                String uphone=rs.getString("phone_no");
                String flatno=rs.getString("room_flat_no");
                String area=rs.getString("building_area");
                String city=rs.getString("city");
                String landmark=rs.getString("landmark");
                String addtype=rs.getString("address_type");
                String pincode=rs.getString("pincode");
                String fulladdress=flatno.concat(" "+area+" ").concat(" "+city+", ").concat(" Landmark:"+landmark+" ").concat(" ("+addtype+") ").concat(" "+pincode);
                                        
                
            int res=st.executeUpdate("UPDATE order_place SET order_price='"+orderprice+"',delivery_preference='"+deliverytype+"',order_address='"+fulladdress+"',order_client_name='"+fullname+"',client_phone='"+uphone+"',client_id='"+userId+"',order_status='Order Place' where order_id='"+orderidd+"';");
            if(res!=0){
                response.sendRedirect("OrderSuccessfull.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConfirmOrder.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    }    


