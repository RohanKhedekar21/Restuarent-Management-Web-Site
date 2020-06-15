<%-- 
    Document   : Reservation
    Created on : Sep 10, 2018, 4:33:31 PM
    Author     : khedekar
--%>

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
            
            <!-- Reservation -->
            
            <div class="Reservation">
                <form action="TableBooking" method="post">
                    <p Style="font-size: 300%;color: darkorchid;font-family: cursive;text-align: center;margin-top:10%">Book</p>
                    <p Style="font-size:200%;color:darkorchid;font-family: monospace;font-weight: bold;text-align: center;">A TABLE</p>
                
                    <input type="date" id="dateobj" name="dateobj"/>
                    <select class="Time" id="time" name="time">
                        <option value="" style="text-align: center">Time</option>
                        <option value="12.00 AM">12.00 AM</option>
                        <option value="1.00 PM">1.00 PM</option>
                        <option value="2.00 PM">2.00 PM</option>
                        <option value="3.00 PM">3.00 PM</option>
                        <option value="4.00 PM">4.00 PM</option>
                        <option value="5.00 PM">5.00 PM</option>
                        <option value="6.00 PM">6.00 PM</option>
                        <option value="7.00 PM">7.00 PM</option>
                        <option value="8.00 PM">8.00 PM</option>
                        <option value="9.00 PM">9.00 PM</option>
                        <option value="10.00 PM">10.00 PM</option>
                        <option value="11.00 PM">11.00 PM</option>
                    </select>
                    <select class="partysize" id="Party_Size" name="Party_Size">
                        <option value="">Party Size</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                    </select>
                    <Button type="submit" class="btnbook"  onclick="return validationbook()">Book</Button>
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
    </body>
</html>
