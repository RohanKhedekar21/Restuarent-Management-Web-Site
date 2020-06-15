<%-- 
    Document   : Admin_page
    Created on : Sep 30, 2018, 12:11:19 PM
    Author     : khedekar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
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
                <div class="btnlogoutt"><Button class="button2" onclick="return AdminLogout()">Logout</Button></div>
            </div>
            
            <!-- Center -->
            <div class="center">
                <div class="leftpart">
                    <div class="Totaluser">
                        <h3 Style="text-align: center">Total Register User</h3>
                        <hr>
                        <%
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/thelittlejoint?useSSL=false","root","root");
                            Statement st=con.createStatement();
                        %>
                        <%
                            
                            String strQuery = "SELECT COUNT(*) FROM users";
                            ResultSet rs = st.executeQuery(strQuery);
                            String Countrow="";
                            while(rs.next()){
                                Countrow = rs.getString(1);
                                
                        %>
                        <p Style="text-align: center;margin-top: 10%;font-weight: bold"><% out.println("Total User: "+Countrow); %></p>
                    </div>
                    <Button class="btnmenuedit" onclick="menuupdate()">Add/Remove Menu</Button>
                    <%
                        }
                    %>
                </div>
                <div class="rightpart">
                    <p Style="text-align:center;font-weight: bold;font-size: 50px;color: cornflowerblue;">Order Place</p>
                    <div class="tblorderpending">
                        <form name="frm" action="OrderDone" method="post" onsubmit="return validate()">
                        <table class="tblorderplace" width="100%" border="1" Style="counter-reset:tableCount;text-align:center;"><input type="hidden" name="ids" id="ids">
                            <tr>
                                <th>No.</th>
                                <th>Order Id</th>
                                <th>Order Price</th>
                                <th>Delivery preference</th>
                                <th>Client Id</th>
                                <th>Client Name</th>
                                <th>Client Address</th>
                                <th>Client Phone</th>
                                <th>Order Status</th>
                                <th>Order Details</th>
                                <th>Order Complete</th>
                            </tr>
                            <%
                                ResultSet rs2=st.executeQuery("select * from order_place where order_status='Order Place';");
                                while(rs2.next()){
                            %>
                            <tr>
                                <td class="counterCell"></td>
                                <td><%=rs2.getString("order_id")%></td>
                                <td><%=rs2.getString("order_price")%></td>
                                <td><%=rs2.getString("delivery_preference")%></td>
                                <td><%=rs2.getString("client_id")%></td>
                                <td><%=rs2.getString("order_client_name")%></td>
                                <td><%=rs2.getString("order_address")%></td>
                                <td><%=rs2.getString("client_phone")%></td>
                                <td><%=rs2.getString("order_status")%></td>
                                <td><input type="button" value="Show Order details" onclick="javascript:openWindow(<%=rs2.getString("order_id")%>)"></td>
                                <td><input type="submit" value="Paid" id="<%=rs2.getString("order_id")%>" onclick="document.frm.ids.value=this.id;"></td>
                            </tr>
                            <%
                                }
                            %>
                        </table>
                        </form>
                        <script>
                            function validate(){
                                if(confirm('Are you sure yo want to complete this order')){
                                    return true;
                                    
                                }else{
                                    return false;
                                }
                            }
                        </script>
                        
                    </div>
                        
                        <p Style="text-align:center;font-weight: bold;font-size: 50px;color: cornflowerblue;">Order Complete</p>
                    <div class="tblorderdone">
                        <form name="frm2" action="" method="post" onsubmit="return validate2()">
                        <table class="tblorderplace" border="1" width="100%" Style="counter-reset:tableCount;text-align:center;"><input type="hidden" id="ids">
                            <tr>
                                <th>No.</th>
                                <th>Order Id</th>
                                <th>Order Price</th>
                                <th>Delivery preference</th>
                                <th>Client Id</th>
                                <th>Client Name</th>
                                <th>Client Address</th>
                                <th>Client Phone</th>
                                <th>Order Details</th>
                                <th>Order Status</th>
                            </tr>
                            <%
                                ResultSet rs3=st.executeQuery("select * from order_place where order_status='Complete';");
                                while(rs3.next()){
                            %>
                            <tr>
                                <td class="counterCell"></td>
                                <td><%=rs3.getString("order_id")%></td>
                                <td><%=rs3.getString("order_price")%></td>
                                <td><%=rs3.getString("delivery_preference")%></td>
                                <td><%=rs3.getString("client_id")%></td>
                                <td><%=rs3.getString("order_client_name")%></td>
                                <td><%=rs3.getString("order_address")%></td>
                                <td><%=rs3.getString("client_phone")%></td>
                                <td><input type="button" value="Show Order details" onclick="javascript:openWindow(<%=rs3.getString("order_id")%>)"></td>
                                <td><%=rs3.getString("order_status")%></td>                                
                            </tr>
                            <%
                                }
                            %>
                        </table>
                        </form>
                        
                    </div>
                </div>
            </div>
            
            <!-- End -->
            <div id="adminend">
                <p Style="text-align: center;padding-top: 15px;">Copyright 2018</p>
            </div>
            
        </div>
    </body>
</html>
