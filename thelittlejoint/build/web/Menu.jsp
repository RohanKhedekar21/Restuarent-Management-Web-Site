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
                <!-- onclick="document.getElementById('id01').style.display='block'" -->
                
                <div class="btnabout"><a class="button" href="About.jsp">About</a></div>
                </div>
            </div>
                                            
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
                    
window.onscroll = function() {myFunction()};

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