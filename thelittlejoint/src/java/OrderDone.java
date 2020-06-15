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
@WebServlet(urlPatterns = {"/OrderDone"})
public class OrderDone extends HttpServlet {

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
            String id=request.getParameter("ids");
            
            MyDb db=new MyDb();
            Connection con=db.getCon();
            Statement st=con.createStatement();
            
            int res=st.executeUpdate("update order_place set order_status='Complete' where order_id='"+id+"' ; ");
            if(res!=0){
                response.sendRedirect("Admin_page.jsp");
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(OrderDone.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
