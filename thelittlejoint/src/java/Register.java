/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author khedekar
 */
public class Register extends HttpServlet {

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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String fname=request.getParameter("f_name");
            String lname=request.getParameter("l_name");
            String phone=request.getParameter("phone_no");
            String pass=request.getParameter("password");
            
            
            MyDb db = new MyDb();
            Connection con =db.getCon();
            Statement st=con.createStatement();
            
            ResultSet rs2=st.executeQuery("select phone_no from users where phone_no='"+phone+"';");
            if(rs2.next()){
                out.println("<script type=\"text/javascript\">");
                out.println("location.replace(document.referrer);");
                out.println("alert('Enter number has alredy Register please enter another mobile number');");
                out.println("</script>");
            }
            else{
            int res=st.executeUpdate("insert into users(first_name,last_name,phone_no,password) values('"+fname+"','"+lname+"','"+phone+"','"+pass+"')");
            if(res!=0){
                ResultSet rs=st.executeQuery("select id from users where phone_no='"+phone+"';");
                rs.next();
                String n=rs.getString("id");
                HttpSession session=request.getSession();
                session.setAttribute("session_user_id",n);
                
                response.sendRedirect("index.jsp");
            } else {
                System.out.println("insert Unsucessfull");
                out.println("unsccessfull");
            }
            }
        } catch (SQLException ex) {
            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

}
