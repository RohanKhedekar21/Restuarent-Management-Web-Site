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
@WebServlet(urlPatterns = {"/Addmenu"})
public class Addmenu extends HttpServlet {

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
            String cate=request.getParameter("menuname");
            String mname=request.getParameter("mname");
            String price=request.getParameter("pmenu");
            
            MyDb db = new MyDb();
            Connection con =db.getCon();
            Statement st=con.createStatement();
            int res=st.executeUpdate("insert into menu(categorie,name,price) values('"+cate+"','"+mname+"','"+price+"')");
            if(res!=0){
                //System.out.println("insert Sucessfull");
                //response.sendRedirect("AdminPage_EditMenu.jsp");
                out.println("<script type=\"text/javascript\">");
                out.println("location='AdminPage_EditMenu.jsp';");
                out.println("alert('Insert Sucessfull');");
                out.println("</script>");
            } else {
                //System.out.println("insert Unsucessfull");
                //out.println("unsccessfull");
                out.println("<script type=\"text/javascript\">");
                out.println("location='AdminPage_EditMenu.jsp';");
                out.println("alert('Insert Unsucessfull');");
                out.println("</script>");
            }
        } catch (SQLException ex) {
            Logger.getLogger(Addmenu.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
