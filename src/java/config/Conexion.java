/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import java.sql.*;

/**
 *
 * @author USER
 */
public class Conexion {
     Connection con;
         public Conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://sql10.freesqldatabase.com:3306/sql10435141", "sql10435141", "XsiJKDuXeg");
        }
        catch (Exception ex){
            System.err.println("error" + ex);
        }
    }
    
    public Connection getConnection(){
        return con;
    }
}
