/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Osanda Wedamulla
 */
public class Dbconnection {
    
    private static Connection con;
    private static Statement stmt;
    
        public static Connection getConnection() {
        try {
            if (con == null) {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookshoppe", "root", "root");
            }
        } catch (Exception e) {
            con = null;
        }                                                     
        return con;
    }

    
    public static ResultSet query(String sql) {
        ResultSet rs = null;
        try {
            System.out.println(sql);
            rs = getConnection().createStatement().executeQuery(sql);
            if (rs == null){
            System.out.println("null");
        }
        } 
        catch (Exception e) {
            rs = null;
        }
        return rs;
    }
    
}
