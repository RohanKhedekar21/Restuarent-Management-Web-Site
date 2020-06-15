<%-- 
    Document   : OrderConfirm
    Created on : Oct 8, 2018, 7:09:40 PM
    Author     : khedekar
--%>


<%@page import="java.io.Console"%>
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
                <div>
                <div class="btnhome"><a class="button" href="index.jsp">Home</a></div>
                <div class="btnmenu"><a class="button" href="Menu.jsp">Menu</a></div>
                <div class="btnorderonline"><a class="button" href="OrderOnline.jsp">Order Online</a></div>
                <div class="btnbooktable"><a class="button" href="Reservation.jsp">Reservation</a></div>
                <div class="btnlogoutt"><Button class="button2" onclick="return Logout()">Logout</Button></div>
                <div class="btnsingin"><Button class="button" onclick="Relocate_Profile()">Profile</Button></div>
                
                <div class="btnabout"><a class="button" href="About.html">About</a></div>
                </div>
            </div>
            
            <div class="OrderConfirmmain">
                <form id="frm" action="ConfirmOrder" method="post">
                <div Style="width: 50%;height: auto;margin-bottom: 3px;float:left;">
                    <div class="contactdetails">
                        <%
                                String n=(String)session.getAttribute("session_user_id");
                                
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/thelittlejoint?useSSL=false","root","root");
                                Statement st=con.createStatement();
                       
                                
                        %>
                        <p Style="display: inline-block;font-size: 20px;margin-top: 5px;">Your Order</p><a Style="font-size: 20px;padding-top: 5px;text-decoration:none;float:right;display: inline-block;" href="Profile_orderstatus.jsp">Edit</a>
                        <hr>
                        <div Style="margin-bottom: 20px;">
                        <div Style="margin-left:3%;margin-bottom: 3%;height:auto;width:30%;display: inline-block">
                            </br>
                            <b>Personal details</b>
                            <p Style="margin-top:10px">
                            <%
                                ResultSet rs = st.executeQuery("select first_name,phone_no from users where id = '"+n+"';");
                                rs.next();
                                if(rs!=null)
                                {
                                    String phone=rs.getString("phone_no");
                                    String fname=rs.getString("first_name");
                                    String joint=fname.concat("("+phone+")");

                                    out.println(joint);
                                }
                            %>
                            </p>
                        </div>
                        <div Style="margin-right:3%;margin-bottom: 3%;height:auto;width:50%;display: inline-block;float:right;">
                            </br>
                            <b>Address</b>
                            <%
                                String fulladdress=null;
                                ResultSet rs2 = st.executeQuery("select room_flat_no,building_area,city,landmark,address_type,pincode from users where id = '"+n+"';");
                                if(rs2.next()){
                                    String flatno=rs2.getString("room_flat_no");
                                        if(rs2.wasNull())
                                        {
                                            flatno="";
                                        }
                                        String area=rs2.getString("building_area");
                                        if(rs2.wasNull())
                                        {
                                            area="";
                                        }
                                        String city=rs2.getString("city");
                                        if(rs2.wasNull())
                                        {
                                            city="";
                                        }
                                        String landmark=rs2.getString("landmark");
                                        if(rs2.wasNull())
                                        {
                                            landmark="";
                                        }
                                        String addtype=rs2.getString("address_type");
                                        if(rs2.wasNull())
                                        {
                                            addtype="";
                                        }
                                        String pincode=rs2.getString("pincode");
                                        if(rs2.wasNull())
                                        {
                                            pincode="";
                                        }
                                        if(flatno.isEmpty() & area.isEmpty() & city.isEmpty() & landmark.isEmpty() & addtype.isEmpty() & pincode.isEmpty()){
                                            
                                        }else{
                                            fulladdress=flatno.concat(" "+area+" ").concat(" "+city+" ").concat(" "+landmark+" ").concat("</br>").concat(" ("+addtype+") ").concat(" "+pincode);
                                        }
                                }
                            %>
                            <p Style="margin-top:10px" ><span id="address"><%=fulladdress%></span></p>
                        </div>
                        </div>
                    </div>
                    <div class="deliverypreference">
                        <p Style="font-size: 20px;margin-top: 5px;">Delivery Preference</p>
                        <hr>
                        <div Style="margin-top:20px;margin-bottom: 20px;margin-left: 3%;">
                            <p>Chooses the Proper method for the delivery</p>
                            </br>
                            <input type="checkbox" id="1" value="Home delivery" name="chbox1" onclick="selectOnlyThis(this.id);sendvalue('Home Delivery')" >&nbsp;I want my food delivered [Home delivery]
                            </br>
                            </br>
                            <input type="checkbox" id="2" value="Take a way" name="chbox1" onclick="selectOnlyThis(this.id);sendvalue('Take a way')">&nbsp;I will collect my food [Take a way]
                            <script>
                                function selectOnlyThis(id) {
                                    
                                    for (var i = 1;i <= 2; i++)
                                    {
                                        document.getElementById(i).checked = false;
                                    }
                                    document.getElementById(id).checked = true;
                                    
                                    value=20;
                                    value2=00;
                                    if(document.getElementById(1).checked){
                                        document.getElementById("val2").innerHTML=value;
                                        
                                        var subtotal=document.getElementById("val").innerHTML;
                                        var dchar=document.getElementById("val2").innerHTML;
                                        var total=parseInt(subtotal)+parseInt(dchar);
                                        document.getElementById("value").value=total;
                                    }
                                    if(document.getElementById(2).checked){
                                        document.getElementById("val2").innerHTML=value2;
                                        
                                        var subtotal=document.getElementById("val").innerHTML;
                                        var dchar=document.getElementById("val2").innerHTML;
                                        var total=parseInt(subtotal)+parseInt(dchar);
                                        document.getElementById("value").value=total;
                                    }
                                    }
                                    function sendvalue(value){
                                        document.getElementById("deliveryType").value=value;
                                    }
                            </script>
                        </div>
                    </div>
                    <div class="selectpaymentmethod">
                        <p Style="font-size: 20px;margin-top: 5px;">Select Payment method</p>
                        <hr>
                        <div Style="margin-top:20px;margin-bottom: 20px;margin-left: 3%;">
                            <input type="checkbox" id="3" class="checkbox-round" value="Take a way">&nbsp;Cash on Delivery
                            </br>
                            </br>
                            <p Style="color:red"><b Style="color:black">Note:</b>Sorry for inconvenience we do not provide online payment service</p>
                        </div>
                    </div>
                </div>
                <div Style="width: 45%;height: auto;float:left;margin-left: 3%;">
                    <div class="orderitem">
                        
                        <p Style="font-size: 20px;margin-top: 5px;">Your order item</p>
                        <hr>
                        <input type="hidden" id="deliveryType" name="deliveryType"/>
                        <div Style="margin-top:20px;margin-bottom: 20px;margin-left: 5%;width: 90%;height: auto;">
                        <table id="table" border="1"  Style="counter-reset:tableCount;">
                            <tr>
                                <th width="5%" >No.</th>
                                <th width="40%">Menu</th>
                                <th width="5%">Price</th>
                                <th width="5%">Quantity</th>
                                <th width="5%">Total</th>
                            </tr>
                            <%
                                int orderidd =(Integer)session.getAttribute("orderID");
                                
                                
                                ResultSet rs3 = st.executeQuery("select m_name,m_price,quantity,total from temp_order_details where order_id = '"+orderidd+"';");
                                if(rs3!=null){
                                while(rs3.next()){
                            %>
                            <tr>
                                <td class="counterCell"></td>
                                <td><%=rs3.getString("m_name")%></td>
                                <td><%=rs3.getString("m_price")%></td>
                                <td><%=rs3.getString("quantity")%></td>
                                <td><%=rs3.getString("total")%></td>
                            </tr>
                            <%
                                }}
                            %>
                        </table>
                            </br>
                            <p Style="float: left">Sub Total</p><p Style="float: right;font-weight: bold;">Rs.<span id="val" name="val"></span></p></br></br>
                            <p Style="float: left">Delivery Charges</p><p Style="float: right" >Rs.<span id="val2">00</span></p></br></br>
                            <p Style="float:left;margin-left:40%;font-size:20px;"><b>Total</b></p><p Style="float:left;margin-left:5%;font-weight: bold;font-size:20px;">Rs.<input Style="font-weight: bold;font-size:20px;" class="totalprice"  type="text" id="value" name="value" readonly="readonly"/></p></br>
                            <script>
                                var table=document.getElementById("table"),sumVal=0;
                                for(var i=1;i<table.rows.length;i++){
                                    sumVal=sumVal+parseInt(table.rows[i].cells[4].innerHTML);
                                }
                                document.getElementById("val").innerHTML=sumVal;
                            </script>
                            <script>
                                var subtotal=document.getElementById("val").innerHTML;
                                var dchar=document.getElementById("val2").innerHTML;
                                var total=parseInt(subtotal)+parseInt(dchar);
                                document.getElementById("value").value=total;
                            </script>
                        </div>
                        <input type="submit" value="ORDER NOW" onclick="return orderConfirmpagechcecking()" Style="margin-left: 37%;margin-bottom:20px;background-color: tomato;color:white;font-weight: bold;width:30%;height:35px;outline:none;" />
                   
                    </div>
                </div>
                         </form>
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
