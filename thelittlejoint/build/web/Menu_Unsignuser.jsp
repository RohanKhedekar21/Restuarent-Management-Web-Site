<%-- 
    Document   : Menu
    Created on : Sep 10, 2018, 4:25:57 PM
    Author     : khedekar
--%>

<%@page import="java.sql.*"%>
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
        
</div>
        <div id="full">
            <!-- Heading -->
            <div class="heading">
               
                <div Style="text-align:right;">
                <p Style="display:inline-block;vertical-align: middle;"><img src="images/phone.png" alt=""/></p>
                <p Style="display:inline-block;"><b>+91-7066711215</b></p>
                </div>
                <div>
                <div class="btnhome"><a class="button" href="index.html">Home</a></div>
                <div class="btnmenu"><a class="button" href="Menu_Unsignuser.jsp">Menu</a></div>
                <div class="btnorderonline"><a class="button" href="OrderOnline_Unsignuser.jsp">Order Online</a></div>
                <div class="btnbooktable"><a class="button" href="Reservation.html">Reservation</a></div>
                
                <div class="btnsingin"><Button class="button" onclick="document.getElementById('id01').style.display='block'">Sign In</Button></div>
                
                <div class="btnabout"><a class="button" href="About.html">About</a></div>
                </div>
            </div>
            
            <!-- *********************Sign Up Form************************* -->
            
            <div id="id01" class="signupform">
                <div class="signupform-content">
                    <ul class="twomenu">
                        <li class="active"><a href="#signup">Sign Up</a></li>
                        <li><a href="#login">Log In</a></li>
                    </ul> 
                    
                    <div class="tab-content">
                        <div id="signup">
                            <h1 Style="display:inline-block;margin-left: 33%;margin-bottom: 40px;margin-top: 40px;text-align: center;color: #333333;font-weight: 300;">Sign Up for Free</h1>
                            
                            <form action="Register" method="Post">
                                <div class="top-row">
                                    <div class="field-wrap">
                                        <input name="f_name" Style="font-size: 22px;display: block;width: 100%;height: 100%;padding: 5px 10px;background: none;background-image: none;border: 1px solid brown;color: #333333;border-radius: 0;transition: border-color .25s ease, box-shadow .25s ease;" placeholder="Enter First Name" type="text" required autocomplete="off" />
                                    </div>
                                    
                                    <div class="field-wrap">
                                        <input name="l_name" Style="font-size: 22px;display: block;width: 100%;height: 100%;padding: 5px 10px;background: none;background-image: none;border: 1px solid brown;color: #333333;border-radius: 0;transition: border-color .25s ease, box-shadow .25s ease;" placeholder="Enter Last Name" type="text" required autocomplete="off"/>
                                    </div>
                                </div>
                                
                                <div class="field-wrap">
                                    <input name="phone_no" class="signupinput" placeholder="Enter Phone Number" type="number" oninput="javascript: if (this.value.length > 10) this.value = this.value.slice(0, 10);" required autocomplete="off"/>
                                </div>
          
                                <div class="field-wrap">
                                    <input name="password" class="signupinput" type="password" placeholder="Create Password" required autocomplete="off"/>
                                </div>
                                
                                <button type="submit" class="buttonsubmit button-block">Get Started</button>
                            </form>
                        </div>
                        
                        <div id="login">
                            <h1 Style="display:inline-block;margin-left: 33%;margin-bottom: 40px;margin-top: 40px;text-align: center;color: #333333;font-weight: 300;">Welcome Back!</h1>
                            
                            <form action="Login" method="Post">
                                <div class="field-wrap">
                                    <input name="phone_no" Style="font-size: 22px;display: block;width: 100%;height: 100%;padding: 5px 10px;background: none;background-image: none;border: 1px solid brown;color: #333333;border-radius: 0;transition: border-color .25s ease, box-shadow .25s ease;" placeholder="Enter Phone Number" type="number" oninput="javascript: if (this.value.length > 10) this.value = this.value.slice(0, 10);" required autocomplete="off"/>
                                </div>
          
                                <div class="field-wrap">
                                    <input name="password" class="signupinput" placeholder="Enter Password" type="password" required autocomplete="off"/>
                                </div>
                                
                                <p Style="margin-top: -20px;text-align: right;margin-bottom:10px;"><a href="#">Forgot Password?</a></p>
          
                                <button class="buttonsubmit button-block">Log In</button>
          
                            </form>

                        </div>
                    </div>
                    
                </div>
            </div>
            <script>
            // Get the modal
    var signupform = document.getElementById('id01');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target === signupform) {
            signupform.style.display = "none";
        }
    };
        </script>
            
                                            
            <!-- Categories -->
            <div class="menupage">
            <div class="categories" id="headerr">
                <Label Style="text-align: center;font-size: 20px;margin:35%;">Categories</Label>
                <hr>
                <ul Style="margin: 20px;">
                    <li><a href="#southindian">South Indian</a></li>
                    <li><a href="#Dosas">Dosas</a></li>
                    <li><a href="#Uttapam">Uttapam</a></li>
                    <li><a href="#Rice">Rice</a></li>
                    <li><a href="#Sweet">Sweet</a></li>
                    <li><a href="#Soups">Soups</a></li>
                    <li><a href="#Starters">Starters</a></li>
                    <li><a href="#Main Course">Main Course</a></li>
                    <li><a href="#Noodles">Noodles</a></li>
                    <li><a href="#Sabziyan">Sabziyan</a></li>
                </ul>

            </div>
            <div class="menulist">
                
                    <%
                       
                       Class.forName("com.mysql.jdbc.Driver");
                       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/thelittlejoint?useSSL=false","root","root");
                       Statement st=con.createStatement();
                       
                       
                    %>
                <table   class="menutable2" cellspacing="50" Style="margin-left:70px">    
                    <h1 id="southindian" style="text-align: center;">South-Indian</h1>
                    
                    <%
                        ResultSet rs1 = st.executeQuery("select * from menu where categorie='south-indian' ;");
                        while(rs1.next()){
                    %>
                    <tr>
                        <td><%=rs1.getString("name")%></td>
                        <td  class="nr" Style="padding-left: 500px"><%=rs1.getString("price")%></td>
                    </tr>
                    
                    <%
                        }
                    %>
                    <tr>
                    <td colspan="3" ><h1 id="Dosas" style="text-align: center;">Dosas</h1></td>
                    </tr>
                    <%
                        ResultSet rs2 = st.executeQuery("select * from menu where categorie='dosas' ;");
                        while(rs2.next()){
                    %>
                    
                    <tr>
                        <td><%=rs2.getString("name")%></td>
                        <td Style="padding-left: 500px"><%=rs2.getString("price")%></td>
                    </tr>
                    
                    <%
                        }
                    %>
                    <tr>
                    <td colspan="3"><h1 id="Uttapam" style="text-align: center;">Uttapam</h1></td>
                    </tr>
                    <%
                        ResultSet rs3 = st.executeQuery("select * from menu where categorie='uttapam' ;");
                        while(rs3.next()){
                    %>
                    <tr>
                        <td><%=rs3.getString("name")%></td>
                        <td Style="padding-left: 500px"><%=rs3.getString("price")%></td>
                    </tr>
                    <%
                        }
                    %>
                    
                    <tr>
                    <td colspan="3"><h1 id="Rice" style="text-align: center;">Rice</h1></td>
                    </tr>
                    <%
                        ResultSet rs4 = st.executeQuery("select * from menu where categorie='rice' ;");
                        while(rs4.next()){
                    %>
                    <tr>
                        <td><%=rs4.getString("name")%></td>
                        <td Style="padding-left: 500px"><%=rs4.getString("price")%></td>
                    </tr>
                    <%
                        }
                    %>
                    <tr>
                    <td colspan="3"><h1 id="Sweet" style="text-align: center;">Sweet</h1></td>
                    </tr>
                    <%
                        ResultSet rs5 = st.executeQuery("select * from menu where categorie='sweet' ;");
                        while(rs5.next()){
                    %>
                    <tr>
                        <td ><%=rs5.getString("name")%></td>
                        <td Style="padding-left: 500px"><%=rs5.getString("price")%></td>
                    </tr>
                    <%
                        }
                    %>
                    <tr>
                    <td colspan="3"><h1 id="Soups" style="text-align: center;">Soups</h1></td>
                    </tr>
                    <%
                        ResultSet rs6 = st.executeQuery("select * from menu where categorie='soups' ;");
                        while(rs6.next()){
                    %>
                    <tr>
                        <td><%=rs6.getString("name")%></td>
                        <td Style="padding-left: 500px"><%=rs6.getString("price")%></td>
                    </tr>
                    <%
                        }
                    %>
                    <tr>
                    <td colspan="3"><h1 id="Starters" style="text-align: center;">Starters</h1></td>
                    </tr>
                    <%
                        ResultSet rs7 = st.executeQuery("select * from menu where categorie='starters' ;");
                        while(rs7.next()){
                    %>
                    <tr>
                        <td><%=rs7.getString("name")%></td>
                        <td Style="padding-left: 500px"><%=rs7.getString("price")%></td>
                    </tr>
                    <%
                        }
                    %>
                    <tr>
                    <td colspan="3"><h1 id="Main Course" style="text-align: center;">Main Course</h1></td>
                    </tr>
                    <%
                        ResultSet rs8 = st.executeQuery("select * from menu where categorie='main-course' ;");
                        while(rs8.next()){
                    %>
                    <tr>
                        <td><%=rs8.getString("name")%></td>
                        <td Style="padding-left: 500px"><%=rs8.getString("price")%></td>
                    </tr>
                    <%
                        }
                    %>
                    <tr>
                    <td colspan="3"><h1 id="Noodles" style="text-align: center;">Noodles</h1></td>
                    </tr>
                    <%
                        ResultSet rs9 = st.executeQuery("select * from menu where categorie='noodles' ;");
                        while(rs9.next()){
                    %>
                    <tr>
                        <td><%=rs9.getString("name")%></td>
                        <td Style="padding-left: 500px"><%=rs9.getString("price")%></td>
                    </tr>
                    <%
                        }
                    %>
                    <tr>
                    <td colspan="3"><h1 id="Sabziyan" style="text-align: center;">Sabziyan</h1></td>
                    </tr>
                    <%
                        ResultSet rs10 = st.executeQuery("select * from menu where categorie='sabziyan' ;");
                        while(rs10.next()){
                    %>
                    <tr>
                        <td><%=rs10.getString("name")%></td>
                        <td Style="padding-left: 500px"><%=rs10.getString("price")%></td>
                    </tr>
                    <%
                        }
                    %>
                </table>

                    
                
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
                <script>
                    
window.onscroll = function() {myFunction();};

var header = document.getElementById("headerr");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    headerr.classList.add("sticky");
  } else {
    headerr.classList.remove("sticky");
  }
}

                </script>
                
    </body>
    
</html>
