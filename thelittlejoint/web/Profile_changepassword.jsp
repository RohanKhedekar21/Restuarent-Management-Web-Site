<%-- 
    Document   : Profile
    Created on : Sep 9, 2018, 11:06:49 PM
    Author     : khedekar
--%>
<%@page import="java.sql.*" %>
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
                <div class="btnhome"><a class="button" href="index.jsp">Home</a></div>
                <div class="btnmenu"><a class="button" href="Menu.jsp">Menu</a></div>
                <div class="btnorderonline"><a class="button" href="OrderOnline.jsp">Order Online</a></div>
                <div class="btnbooktable"><a class="button" href="Reservation.jsp">Reservation</a></div>
                <div class="btnlogoutt"><Button class="button2" onclick="return Logout()">Logout</Button></div>
                <div class="btnsingin"><Button class="button" onclick="Relocate_Profile()">Profile</Button></div>
                
                
                <div class="btnabout"><a class="button" href="About.jsp">About</a></div>
                </div>
            </div>
            
            <!-- sub_heading -->
            <div class="subheading">
                <div class="circle">
                    <%
                    try{
                       String n=(String)session.getAttribute("session_user_id");
                       
                       Class.forName("com.mysql.jdbc.Driver");
                       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/thelittlejoint?useSSL=false","root","root");
                       Statement st=con.createStatement();
                       
                       ResultSet rs = st.executeQuery("select * from users where id = '"+n+"'");
                       rs.next();
                       String fname=rs.getString("first_name");
                       char afname=fname.toUpperCase().charAt(0);
                           //PrintWriter print = new PrintWriter(out);
                           //print.printf(String.format("Welcome :"+fname));
                           out.println(afname);
                           
                    }
                    catch(Exception e){
                        
                    }
                    //out.println("welcome"+fname);
                %>
                </div>
                <div class="prouname">
                    <%
                    try{
                       String n=(String)session.getAttribute("session_user_id");
                       
                       Class.forName("com.mysql.jdbc.Driver");
                       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/thelittlejoint?useSSL=false","root","root");
                       Statement st=con.createStatement();
                       
                       ResultSet rs = st.executeQuery("select * from users where id = '"+n+"'");
                       rs.next();
                       String fname=rs.getString("first_name");
                       String lname=rs.getString("last_name");
                       
                           //PrintWriter print = new PrintWriter(out);
                           //print.printf(String.format("Welcome :"+fname));
                           out.println(fname+" "+lname);
                           
                    }
                    catch(Exception e){
                        
                    }
                    //out.println("welcome"+fname);
                %>
                 </br>
                <button Style="background-color: red;color: black;outline: none;height: 40px;width: 120px;margin-right: 5%;margin-top:5%;cursor: pointer;" onclick="Logout()">Logout</button>
                
                </div>
                
                
                
                    
            </div>
            
            <!-- menus -->
            <div class="profileaction">
                <div class="profilemenu">
                    <div class="btnprofilemenu"><a class="profilebutton" href="OrderOnline.jsp">Order Now</a></div>
                    <hr size="1" Style="border-color: activecaption;">
                    
                    <div class="btnprofilemenu"><a class="profilebutton" href="Profile_orderstatus.jsp">Order Status</a></div>
                    <hr size="1" Style="border-color: activecaption;">
                    
                    <div class="btnprofilemenu"><a class="profilebutton" href="Profile_details.jsp">Update/Edit Details</a></div>
                    <hr size="1" Style="border-color: activecaption;">
                    
                    <div class="btnprofilemenu"><a class="profilebutton" href="Profile_tblstatus.jsp">Table Booked Status</a></div>
                </div>
                <div class="changepassword">
                    <div class="changepassword_content">
                        <form action="Changepassword" method="post">
                        <table  width="100%" height="180px">
                            <tr>
                                <th colspan="3" valign="top"><h3 Style="text-align: left">Change Password</h3></th>
                            </tr>
                            <tr>
                                <th valign="bottom" width="31%" ><p Style="float: left">Previous Password</p></th>
                                <th valign="bottom" ><p Style="float: left">New Password</p></th>
                                <th valign="bottom" ><p Style="float: left">Confirm Password</p></th>
                            </tr>
                            <tr>
                                <th valign="top"><input type="text" id="oldpass" name="oldpass" placeholder="Enter Old Password"/></th>
                                <th valign="top"><input type="text" id="newpass" name="newpass" placeholder="Enter New Password"/></th>
                                <th valign="top"><input type="text" id="confirmpass" name="confirmpass" placeholder="Confirm New Password"/></th>
                            </tr>
                            <tr>
                                <td ><input type="button" value="Go Back" class="btngoback" onclick="goback()"/></td>
                                <td colspan="2"><input type="submit" value="Change Password" class="btnchgpass" onclick="return changepassword()"/></td>
                            </tr>
                            
                        </table>
                        </form>
                        </div>
                </div>
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
