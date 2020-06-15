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
@WebServlet(urlPatterns = {"/cancelOrder"})
public class cancelOrder extends HttpServlet {

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
            String orderid=request.getParameter("ids");
            out.println(orderid);
            
            MyDb db = new MyDb();
            Connection con =db.getCon();
            Statement st=con.createStatement();
            
            int res=st.executeUpdate("update order_place set order_status='Order Canceled' where order_id='"+orderid+"';");
            if(res!=0){
                response.sendRedirect("Profile_orderstatus.jsp");
            }
        } catch (SQLException ex) {
            Logger.getLogger(cancelOrder.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
