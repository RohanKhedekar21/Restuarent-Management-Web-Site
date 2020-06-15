<%-- 
    Document   : OrderSuccessfull
    Created on : Oct 9, 2018, 8:42:58 PM
    Author     : khedekar
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
        <title>The Little Joint</title>
    </head>
    <body>
        <div id="full">
            
            <!-- Heading -->
            <div class="heading">
                
                <div Style="text-align:right;">
                <p Style="display:inline-block;vertical-align: middle;"><img src="images/phone.png" alt=""/></p>
                <p Style="display:inline-block;"><b>+91-7066711215</b></p>
                </div>
                <div>
                <div class="btnhome"><a class="button" href="index.jspp">Home</a></div>
                <div class="btnmenu"><a class="button" href="Menu_Unsignuser.jsp">Menu</a></div>
                <div class="btnorderonline"><a class="button" href="OrderOnline_Unsignuser.jsp">Order Online</a></div>
                <div class="btnbooktable"><a class="button" href="Reservation.jsp">Reservation</a></div>
                <div class="btnlogoutt"><Button class="button2" onclick="return Logout()">Logout</Button></div>
                <div class="btnsingin"><Button class="button" onclick="Relocate_Profile()">Profile</Button></div>
                
                
                <div class="btnabout"><a class="button" href="About.html">About</a></div>
                </div>
            </div>
            
                            <%
                                //String n=(String)session.getAttribute("session_user_id");
                                int orderid =(Integer)session.getAttribute("orderID");
                                //HttpSession session2=request.getSession();
                                //int orderidd =(Integer)session2.getAttribute("orderID");
            
                                
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/thelittlejoint?useSSL=false","root","root");
                                Statement st=con.createStatement();
                            %>
            <div class="ordersuccessfullmain">
                <%
                    ResultSet rs=st.executeQuery("select * from order_place where order_id='"+orderid+"';");
                    rs.next();
                    String name=rs.getString("order_client_name");
                    String address=rs.getString("order_address");
                    String phone=rs.getString("client_phone");
                    String total=rs.getString("order_price");
                    
                %>
                <div Style="background-color: rgb(237,245,221);border: 1px solid black;margin-top:25px;margin-left:5%;width:90%;height:80px;">
                    <div Style="background-color: rgb(237,245,221);margin-left:20%;margin-top: 0.5%;display:inline-block;float:left;"><img src="images/icon.png" alt="" /></div>
                    <div Style="background-color: rgb(237,245,221);text-align: center;float:left;font-weight: bold;font-size: 30px;margin-left: 10px;margin-top: 20px;"><p>Your Order No #<%=orderid%> has been Successfully Completed</p></div>
                </div>
                </br>
                <div Style="margin-left:5%;height: 30%;width: 90%;">
                    <div Style="display: inline-block;float:left;width:250px;">
                        <p Style="display: inline-block;font-size: 20px;"><b>Order No.:</b></p><p Style="display: inline-block;font-size: 35px;color:blue">#<%=orderid%></p>
                        <p Style="color: royalblue;font-size: 20px;"><%=name%></p></br>
                        <p Style="font-size: 20px;"><%=address%></p></br>
                        <p Style="font-size: 20px;">+91-<%=phone%></p>
                    </div>
                    <div Style="display: inline-block;float:left;float:right;">
                        <p Style="font-size: 20px;display: inline-block;"><b>Total Item.</b></p>
                        </br>
                        <p Style="font-size: 20px;display: inline-block;"><b>Total Amount:</b></p><p Style="display: inline-block;font-size: 25px;color:blue">Rs.<%=total%></p>
                    </div>
                </div>
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
                    
                </div>
                <div Style="margin-left:5%;height: auto;width: 90%;margin-top: 2%;">
                    <p Style="text-align:center;color:grey;font-size: 20px;">Estimate time of delivery-</p></br>
                    <p Style="text-align:center;color:blue;font-size: 25px;"><b>20 to 30 min after order place</b></p>
                </div>
                <div Style="margin-left:5%;height: auto;width: 90%;margin-top:2%;">
                    <p Style="text-align:center;color:grey;font-size: 20px;">You can view your order history by going to the <a href="Profile.jsp">Profile</a> page and click on order status.</p>
                    <p Style="text-align:center;color: yellowgreen;margin-top:2%;font-weight: bold;font-size: 30px;">Thanks for ordering with us online!</p>
                </div>
                <div Style="margin-left:5%;height: auto;width: 90%;margin-top:2%;margin-bottom: 2%;text-align: center;">
                    <button Style="border-radius: 10px;color:white;background-color: royalblue;outline:none;height: 30px;width: 25%;cursor: pointer;" onclick="window.location.href='index.jsp';">CONTINUE ORDERING >></button>
                </div>
                </br>
                
            </div>
                
            
            <!-- End -->
            <div id="end">
                <div id="quicklink"><!-- Quick links -->
                    <p Style="font-size: 20px"><b><u>Quick Links</u></b></p>
                    <p style="padding-top: 4%;"><a class="link" href="">About Us</a></p>
                    <p style="padding-top: 4%;"><a class="link" href="">Menu</a></p>
                    <p style="padding-top: 4%;"><a class="link" href="">Terms & Condition</a></p>
                    <p style="padding-top: 4%;"><a class="link" href="">F.A.Q's</a></p>
                </div>
                
                <div id="connectwithus"><!-- Connect with us -->
                    <p Style="font-size: 20px"><b><u>Connect with Us</u></b></p>
                    <p style="display: inline;padding-top: 4%;"><a href=""><img src="images/insta.png" alt="www.google.com" /></a></p>
                    <p style="display: inline;padding-top: 4%;"><a href=""><img src="images/fb.png" alt=""/></a></p>
                </div>
                
                <div id="myaccount"><!-- My account -->
                    <p Style="font-size: 20px"><b><u>My Account</u></b></p>
                    <p style="padding-top: 4%;"><a class="link" href="">Profile</a></p>
                    <p style="padding-top: 4%;"><a class="link" href="">Order History</a></p>
                </div>
                
                <div id="subscribe"><!-- Subscription -->
                    <p Style="font-size: 17px"><b>Subscribe to our newsletter program and <br/> get update straight from the restaurant</b></p>
                    <input type="text" name="emailforsubscription" Placeholder="Your Email Id"/>
                    <input type="button" name="subscribe" value="Subscribe"/>
                </div>
                
            </div>
           
        </div>
    </body>
</html>
