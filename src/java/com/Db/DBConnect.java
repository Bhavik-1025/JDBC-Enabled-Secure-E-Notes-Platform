
package com.Db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    private static Connection conn;
    public static Connection getConn()
    {
        try{
            if(conn==null)
            {
                Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/enote","root","root@#2002");
                
                
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return conn;
    }    
}

//    create database enote
//    use enote
//    CREATE TABLE Register (
//    id INT AUTO_INCREMENT PRIMARY KEY,
//    fullName VARCHAR(20) NOT NULL,
//    email VARCHAR(30) NOT NULL,
//    password VARCHAR(20) NOT NULL
//    );

