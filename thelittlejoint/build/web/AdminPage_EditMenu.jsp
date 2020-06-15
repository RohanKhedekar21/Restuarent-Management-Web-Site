<%-- 
    Document   : AdminPage_EditMenu
    Created on : Sep 30, 2018, 3:06:23 PM
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
                <button class="goback" onclick="backto()">Go Back</button>
            </div>
            
            <!-- Center -->
            <div class="cnttblmenu">
                
                <div class="addmenuform" id="headerr">
                    <Label Style="font-size: 20px;margin-left:35%;">Add Menu</Label>
                    <hr>
                    <div class="addform">
                        <form action="Addmenu" method="Post">
                            <p style="margin-top: 10px;">Select Categories</p>
                            <select style="margin-top: 10px;" name="menuname">
                                <option value="south-indian">South Indian</option>
                                <option value="dosas">Dosas</option>
                                <option value="uttapam">Uttapam</option>
                                <option value="rice">Rice</option>
                                <option value="sweet">Sweet</option>
                                <option value="soups">Soups</option>
                                <option value="starters">Starters</option>
                                <option value="main-course">Main Course</option>
                                <option value="noodles">Noodles</option>
                                <option value="sabziyan">Sabziyan</option>
                            </select>
                            <p style="margin-top: 10px;">Enter Menu Name</p>
                            <input  style="margin-top: 10px;" type="text" name="mname"/>
                            <p  style="margin-top: 10px;">Enter Price</p>
                            <input style="margin-top: 10px;" type="number" name="pmenu"/>
                            <input style="margin-top: 10px;margin-bottom: 10px;width:100px;" type="submit" value="Add"/>
                        </form>
                    </div>
                </div>
                
                <div class="tableorbutton">
                    <form name="frm" action="Delete_Menu" method="post">
                        <h1 Style="text-align:center;">Menus</h1><input type="hidden" name="ids" />
                <table border="1" class="editmenutbl">
                    <%
                       
                       Class.forName("com.mysql.jdbc.Driver");
                       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/thelittlejoint?useSSL=false","root","root");
                       Statement st=con.createStatement();
                    %>
                    
                    <tr>
                        <th>No.</th>
                        <th>Categories</th>
                        <th>Menu Name</th>
                        <th>Price</th>
                        <th>Delete</th>
                    </tr>
                    <%
                        ResultSet rs1 = st.executeQuery("select * from menu;");
                        while(rs1.next()){
                    %>
                    <tr>
                        <td class="counterCell"></td>
                        <td><%=rs1.getString("categorie")%></td>
                        <td><%=rs1.getString("name")%></td>
                        <td><%=rs1.getString("price")%></td>
                        <td><input type="button" value="delete" id="<%=rs1.getString("id")%>" onclick="{document.frm.ids.value=this.id;document.frm.submit();}"/></td>
                    </tr>
                    <%
                        }
                    %>
                </table>
                </form>
                </div>
                
            </div>
                
                
                <!-- End -->
                <div id="adminend">
                    <p Style="text-align: center;padding-top: 15px;">Copyright 2018</p>
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
