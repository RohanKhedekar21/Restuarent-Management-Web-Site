/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import TheLittleJointModels.OrderDetail;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONArray;
import org.json.JSONObject;
/**
 *
 * @author khedekar
 */
@WebServlet(urlPatterns = {"/PlaceOrder"})
public class PlaceOrder extends HttpServlet {

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
        //response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             
            try {
                
            HttpSession session=request.getSession();
            String userId=(String)session.getAttribute("session_user_id");
            
            //String orderId = UUID.randomUUID().toString();
            
            MyDb db = new MyDb();
            Connection con =db.getCon();
            Statement st=con.createStatement();
                
                JSONArray arr = new JSONArray(request.getParameter("jsonData"));
                List<OrderDetail> orderDetails;
                orderDetails = new ArrayList<>();
                
                int orderTotal = 0;
                
                for (int i = 0; i < arr.length(); i++) 
                {                    
                    JSONObject jObj = arr.getJSONObject(i);
                    Iterator it = jObj.keys();
                
                    OrderDetail orderdetail= new OrderDetail();
                
                while(it.hasNext())
                {                    
                    String key = (String) it.next();                
                    
                    
                    switch (key) 
                    {
                                    case "menuitemid":  orderdetail.setMenuitemid(jObj.getInt(key)); 
                                        break;
                                    case "menuname":  orderdetail.setMenuName(jObj.getString(key)); 
                                        break;
                                    case "price":  orderdetail.setPrice(jObj.getInt(key));
                                         break;
                                     case "quantity":  orderdetail.setQuantity(jObj.getInt(key));
                                          break;
                                    case "total":  orderdetail.setTotal(jObj.getInt(key)); 
                                                    orderTotal+=orderdetail.getTotal();
                                         break;
            
            
                                    default: 
                                         break;
                     }
                    
                }
                orderDetails.add(orderdetail);
                }
                
                
                
                String str = "";
                
                int orderId=0;
                ResultSet rs=st.executeQuery("select MAX(order_id) as order_id from temp_order_details;");
                if(rs.next()){
                    orderId=rs.getInt("order_id");
                    if(rs.wasNull()){
                        orderId=1;
                    }else{
                        orderId++;
                    }
                }
                
                HttpSession session2 =request.getSession();
                session2.setAttribute("orderID", orderId);
                        
                int resOrderDetails=st.executeUpdate("insert into order_place(order_id,order_price,order_address,order_client_name,client_phone,client_id,order_status) "
                          + "values('"+orderId+"','"+orderTotal+"',null,null,null,null,'InProcess'); ");
                if(resOrderDetails!=0)
                {
                    
                    for(OrderDetail order : orderDetails) 
                    {
                    int res=st.executeUpdate("insert into temp_order_details(order_id,userid,m_id,m_name,m_price,quantity,total)"
                          + "values('"+orderId+"','"+userId+"','"+order.getMenuitemid()+"','"+order.getMenuName()+"','"+order.getPrice()+"','"+order.getQuantity()+"','"+order.getTotal()+"'); ");
                        if(res!=0)
                        {                      
                                              
                        }
                        else
                        {
                            out.println("unsuccessfull");
                        }
                    }
                    
                }        
                
                

                 //response.sendRedirect("OrderConfirm.jsp");
            }
            catch(Exception ex)
            {
                ex.printStackTrace();
              Logger.getLogger(ex.getMessage());
            }
            
            
           
        }
        catch(Exception ex)
            {
                ex.printStackTrace();
              Logger.getLogger(ex.getMessage());
            }
    }

}
