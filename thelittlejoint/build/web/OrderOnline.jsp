<%-- 
    Document   : OrderOnline
    Created on : Sep 10, 2018, 4:30:39 PM
    Author     : khedekar
--%>
<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/css.css" type="text/css">
        <script type="text/javascript" src="javascript/JavaScript.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
                                            
            <!-- Categories -->
            <div class="menupage">
            <div class="categories2">
                <Label Style="font-size: 20px;margin-left: 22%;">Categories</Label>
                <hr>
                <ul type="disc" Style="margin-top: 25px;margin-left:15px">
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
                <!-- Center Menu -->
                <div class="centermenu">
                    
                    <%
                       
                       Class.forName("com.mysql.jdbc.Driver");
                       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/thelittlejoint?useSSL=false","root","root");
                       Statement st=con.createStatement();
                       
                    %>
                    <form name="frm" action="Temporder" method="post">
                    <table class="menutable" cellspacing="50">
                    <h1 id="southindian" style="text-align: center;">South-Indian</h1><input type="hidden" name="mmid"/>
                    
                    <%
                        ResultSet rs1 = st.executeQuery("select * from menu where categorie='south-indian' ;");
                        while(rs1.next()){
                    %>
                    <tr>
                        <td><%=rs1.getString("name")%></td>
                        <td class="nr" Style="padding-left: 200px"><%=rs1.getString("price")%></td>
                        <td class="nr" Style="padding-left: 200px"><input class="addbutton" type="button" value="Add" id="<%=rs1.getString("id")%>" onclick="javascript:addMenu(this.id,'<%=rs1.getString("name")%>', <%=rs1.getString("price")%>)"/></td>
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
                        <td ><%=rs2.getString("name")%></td>
                        <td Style="padding-left: 200px"><%=rs2.getString("price")%></td>
                        <td Style="padding-left: 200px"><input class="addbutton" type="button" value="Add" id="<%=rs2.getString("id")%>" onclick="javascript:addMenu(this.id,'<%=rs2.getString("name")%>', <%=rs2.getString("price")%>)"/></td>
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
                        <td Style="padding-left: 200px"><%=rs3.getString("price")%></td>
                        <td Style="padding-left: 200px"><input class="addbutton" type="button" value="Add" id="<%=rs3.getString("id")%>" onclick="javascript:addMenu(this.id,'<%=rs3.getString("name")%>', <%=rs3.getString("price")%>)"/></td>
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
                        <td Style="padding-left: 200px"><%=rs4.getString("price")%></td>
                        <td Style="padding-left: 200px"><input class="addbutton" type="button" value="Add" id="<%=rs4.getString("id")%>" onclick="javascript:addMenu(this.id,'<%=rs4.getString("name")%>', <%=rs4.getString("price")%>)" /></td>
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
                        <td Style="padding-left: 200px"><%=rs5.getString("price")%></td>
                        <td Style="padding-left: 200px"><input class="addbutton" type="button" value="Add" id="<%=rs5.getString("id")%>" onclick="javascript:addMenu(this.id,'<%=rs5.getString("name")%>', <%=rs5.getString("price")%>)" /></td>
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
                        <td Style="padding-left: 200px"><%=rs6.getString("price")%></td>
                        <td Style="padding-left: 200px"><input class="addbutton" type="button" value="Add" id="<%=rs6.getString("id")%>" onclick="javascript:addMenu(this.id,'<%=rs6.getString("name")%>', <%=rs6.getString("price")%>)" /></td>
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
                        <td Style="padding-left: 200px"><%=rs7.getString("price")%></td>
                        <td Style="padding-left: 200px"><input class="addbutton" type="button" value="Add" id="<%=rs7.getString("id")%>" onclick="javascript:addMenu(this.id,'<%=rs7.getString("name")%>', <%=rs7.getString("price")%>)" /></td>
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
                        <td Style="padding-left: 200px"><%=rs8.getString("price")%></td>
                        <td Style="padding-left: 200px"><input class="addbutton" type="button" value="Add" id="<%=rs8.getString("id")%>" onclick="javascript:addMenu(this.id,'<%=rs8.getString("name")%>', <%=rs8.getString("price")%>)" /></td>
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
                        <td Style="padding-left: 200px"><%=rs9.getString("price")%></td>
                        <td Style="padding-left: 200px"><input class="addbutton" type="button" value="Add" id="<%=rs9.getString("id")%>" onclick="javascript:addMenu(this.id,'<%=rs9.getString("name")%>', <%=rs9.getString("price")%>)" /></td>
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
                        <td Style="padding-left: 200px"><%=rs10.getString("price")%></td>
                        <td Style="padding-left: 200px"><input class="addbutton" type="button" value="Add" id="<%=rs10.getString("id")%>" onclick="javascript:addMenu(this.id,'<%=rs10.getString("name")%>', <%=rs10.getString("price")%>)" /></td>
                    </tr>
                    <%
                        }
                    %>
                    
                </table>
                </form>
                </div>
            
            <!-- bill -->
            <div class="bill">
                <form name="frm2" action="PlaceOrder" method="post">
                <Label Style="font-size: 20px;margin-left: 35%;font-family: cursive;">My Order</Label>
                <hr>
                <div style="min-height: 250px;text-align: center;">
                   
                    <table id="table" class="billtable" width="97%" border="1">
                        <input type="hidden" name="mmmid"/>
                        <tr>
                            <th width="60%">Menu</th>
                            <th width="13%">$</th>
                            <th width="13%">Q.</th>
                            <th width="13%">+$</th>
                            <th width="13%">X</th>
                        </tr>
                       
                    </table>
                    <script>
                        var table=document.getElementById("table"),sumVall=0;
                        for(var j=1;j<table.rows.length;j++){
                            //var currentid=j+1;
                            var elementId="txtQuantity"+j;
                            
                            //console.log(document.getElementById("txtQuantity"+currentid).Id));
                            sumVall=parseInt(table.rows[j].cells[1].innerHTML)*parseInt(document.getElementById(elementId).value);
                            table.rows[j].cells[3].innerHTML = sumVall;
                            
               
                            //document.getElementById("vall").innerHTML=sumVall;
                        }
                        
                        
                    </script>
                </div>
                <hr>
                <div>
                    <Label Style="float: left;margin-left: 15%;margin-top: 5%;">Total</Label>
                    <Label Style="float: right;margin-right: 15%;margin-top: 5%;"><span id="val"></span></Label>
                    <script>
                        var table=document.getElementById("table"),sumVal=0;
                        for(var i=1;i<table.rows.length;i++){
                            sumVal=sumVal+parseInt(table.rows[i].cells[3].innerHTML);
                        }
                        document.getElementById("val").innerHTML=sumVal;
                        console.log(sumVal);
                    </script>
                </div>
                <div Style="text-align: center;margin-top: 50px;">
                    <input Style="height: 30px;width: 150px;background-color:royalblue;color:#fff;" type="button" onclick="javascript:placeOrder(); " value="Checkout"/>
                </div>
                </form>
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
                   // var fvalue=document.getElementById('fvalue').value;
                    //var svalue=document.getElementById('svalue').value;
                    //var total=document.getElementById('total').value;
                    //document.getElementById('total').value=total;
                </script>
    </body>
    
</html>
