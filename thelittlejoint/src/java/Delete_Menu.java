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

@WebServlet(urlPatterns = {"/Delete_Menu"})
public class Delete_Menu extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String id=request.getParameter("ids");
            
            MyDb db = new MyDb();
            Connection con =db.getCon();
            Statement st=con.createStatement();
            int res=st.executeUpdate("delete from menu where id='"+id+"';");
            if(res!=0){
                //response.sendRedirect("AdminPage_EditMenu.jsp");
                out.println("<script type=\"text/javascript\">");
                out.println("location='AdminPage_EditMenu.jsp';");
                out.println("alert('Menu Successfully deleted');");
                out.println("</script>");
            }
            else{
                out.println("Delete unsucessfull");
            }
        } catch (SQLException ex) {
            Logger.getLogger(Delete_Menu.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
