

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author khedekar
 */
public class MyDb {
    Connection con;
    public Connection getCon(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/thelittlejoint?useSSL=false","root","root");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MyDb.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex);
        } catch (SQLException ex) {
            Logger.getLogger(MyDb.class.getName()).log(Level.SEVERE, null, ex);
             System.out.println(ex);
        }
    return con;
    }
    
}
