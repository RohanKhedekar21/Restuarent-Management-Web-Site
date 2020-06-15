<%-- 
    Document   : About
    Created on : Sep 10, 2018, 4:22:03 PM
    Author     : khedekar
--%>
<%@page  %>
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
                    <div class="btnlogoutt"><Button class="button2" onclick="Logout()">Logout</Button></div>
                    <div class="btnsingin"><Button class="button" onclick="Relocate_Profile()">Profile</Button></div>
                    <div class="btnabout"><a class="button" href="About.jsp">About</a></div>
                </div>
            </div>
            
            <!-- Center -->
            <div Style="width:100%;height: 500px; ">
                <div>
                    
                </div>
                <div>
                    
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
