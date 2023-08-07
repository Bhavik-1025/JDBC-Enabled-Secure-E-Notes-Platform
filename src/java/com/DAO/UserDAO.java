
package com.DAO;

import com.User.UserDetails;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.*;


public class UserDAO {
    private Connection conn;
    
    public UserDAO(Connection conn){
        super();
        this.conn = conn;
    }
    
    public boolean addUser(UserDetails us){
        boolean f = false;
        try{
          String query="insert into register(fullName,email,password) values(?,?,?)";
          
          PreparedStatement ps;
          ps = conn.prepareStatement(query);
          ps.setString(1, us.getName());
          ps.setString(2, us.getEmail());
          ps.setString(3, us.getPassword());
          int i = ps.executeUpdate();
          if(i==1){
              f = true;
          }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return f;
    }
    
    public UserDetails loginUser(UserDetails us){
        UserDetails user = null;
        try{
          String query="select * from register where email=? and password=?";
          
          PreparedStatement ps;
          ps = conn.prepareStatement(query);
          ps.setString(1, us.getEmail());
          ps.setString(2, us.getPassword());
          ResultSet rs = ps.executeQuery();
          if(rs.next()){
              user = new UserDetails();
              user.setId(rs.getInt("id"));
              user.setName(rs.getString("fullName"));
              user.setEmail(rs.getString("email"));
              user.setPassword("password");
          }
        }catch(Exception e){
            e.printStackTrace();
        }
        return user;
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

