<%-- 
    Document   : OrderDetails
    Created on : Oct 14, 2018, 2:24:53 PM
    Author     : kunal
--%>
<%@page import="java.sql.*;"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/css.css" type="text/css">
        <script type="text/javascript" src="javascript/JavaScript.js"></script>
        <title>The Little Joint - Order Details</title>
       
    </head>
    <body>
        <h1 Style="text-align:center;">Order details</h1>
         <%
                                //String n=(String)session.getAttribute("session_user_id");
                                int orderid = Integer.parseInt(request.getParameter("orderid"));
                                //HttpSession session2=request.getSession();
                                //int orderidd =(Integer)session2.getAttribute("orderID");
            
                                
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/thelittlejoint?useSSL=false","root","root");
                                Statement st=con.createStatement();
                            %>
        <div Style="margin-left:5%;height: auto;width: 90%;">
                    <table class="ordertable" width="75%" Style="counter-reset:tableCount;margin-left:10%;margin-top:3%;margin-bottom:3%;" >
                        <tr>
                            <th width="10%">No.</th>
                            <th width="50%">Menu Name</th>
                            <th width="15%">Price</th>
                            <th width="15%">Quantity</th>
                            <th width="15%">Total</th>
                            
                        </tr>
                        <%
                            ResultSet rs2=st.executeQuery("select * from temp_order_details where order_id='"+orderid+"';");
                            while(rs2.next()){
                        %>
                        <tr>
                            <td Style="text-align:center;" class="counterCell"></td>
                            <td Style="text-align:center;"><%=rs2.getString("m_name")%></td>
                            <td Style="text-align:center;"><%=rs2.getString("m_price")%></td>
                            <td Style="text-align:center;"><%=rs2.getString("quantity")%></td>
                            <td Style="text-align:center;"><%=rs2.getString("total")%></td>
                        </tr>
                        <%
                            }
                        %>
                    </table> 
                    
                    <div Style="text-align:center;"><Button Style="height:40px;width:120px;background-color: tomato;" onclick="window.close();">Close</Button></div>
                    
                </div>
        
    </body>
    
    
</html>
