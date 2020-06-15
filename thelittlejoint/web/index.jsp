<%-- 
    Document   : index
    Created on : Sep 9, 2018, 5:36:11 PM
    Author     : khedekar
--%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Little Joint</title>
        <link rel="stylesheet" href="css/css.css" type="text/css">
        <script type="text/javascript" src="javascript/JavaScript.js"></script>
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
            
            
            <!-- *************************** User Welcome ******************************* -->
            <div class="welcomebar">
                <%
                    try{
                       String n=(String)session.getAttribute("session_user_id");
                       
                       Class.forName("com.mysql.jdbc.Driver");
                       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/thelittlejoint?useSSL=false","root","root");
                       Statement st=con.createStatement();
                       
                       ResultSet rs = st.executeQuery("select * from users where id = '"+n+"'");
                       rs.next();
                       String fname=rs.getString("first_name");
                           //PrintWriter print = new PrintWriter(out);
                           //print.printf(String.format("Welcome :"+fname));
                           out.println("Welcome :"+fname);
                           
                    }
                    catch(Exception e){
                        
                    }
                    //out.println("welcome"+fname);
                %>
                
            </div>
            
                                            <!-- Advertise -->
            <div class="advertise" >
                <div class="w3-content w3-display-container">
                    <img class="mySlides" src="images/ad1.png" style="width:100%">
                    <img class="mySlides" src="images/ad2.png" style="width:100%">
                    
                    <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
                    <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
                </div>
            </div>
                                            
<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1;}    
  if (n < 1) {slideIndex = x.length;}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>


            <!-- Introduction -->
            <div class="intro">
                <h1 style="text-align:center;padding-top:20px"><u>Introduction</u></h1>
                <p style="text-align:center;margin-top: 30px;font-size:20px">Enjoy!!! mouth watering & delicious food only at The Little Joint Fast Food & Restaurant.<br/><br/>
                A place where you will come again & again. Here we provide quality & quantity at its own best. Our service & hospitality has always been a <br/> benchmark. If you want delicious food with mouth watering dishes to be served, then The Little Joint Fast Food & Restaurant should be your choice.<br/><br/>
                We also provide home delivery in Ulhasnagar & Kalyan.</p>
                <button class="btnknowmore">Know More</button>
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
