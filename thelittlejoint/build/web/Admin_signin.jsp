<%-- 
    Document   : Admin_signin
    Created on : Oct 15, 2018, 5:40:36 PM
    Author     : khedekar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="javascript/JavaScript.js"></script>
         <link rel="stylesheet" href="css/css.css" type="text/css">
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
            </div>
            
            <div Style="width:100%;height:410px;display:inline-block;">
                <div Style="text-align: center;margin-top:4%;background-color: bisque;border:2px solid black;width:30%;height: 300px;margin-left:35%;">
                    <div Style="margin-top:5%;"><h1>Admin Login</h1></div>
                    <form action="Adminsignin" method="post">
                       <div Style="margin-top:10%;"> UserName:<input Style="background:none;border:1px solid black;" type="text" name="username" /></div>
                        <div Style="margin-top:5%;">Password:<input Style="background:none;border:1px solid black;" type="password" name="password" /></div>
                        <div Style="margin-top:8%;"><input Style="height:35px;width:120px;background-color: aquamarine;font-weight: bold;" type="submit" value="Login"></div>
                    </form>
                </div>
            </div>
            
            <!-- End -->
            <div id="adminend">
                <p Style="text-align: center;padding-top: 15px;">Copyright 2018</p>
            </div>
            
        </div>
    </body>
</html>
