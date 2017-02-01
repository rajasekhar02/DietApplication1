/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author user
 */
public class connection {

    static Connection con=null;

   public static Connection getConnect()
    {

       if(con==null)
       {
           try{
               Class.forName("com.mysql.jdbc.Driver");
               con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/dietmanagementsystem","root","tiger");
           }
           catch(ClassNotFoundException e)
           {
                System.out.println(e);
           } 
           catch (SQLException e) {
               System.out.println("invalid query");
           }

           
       }


       return con;

   }

}
