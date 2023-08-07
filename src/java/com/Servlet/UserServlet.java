
package com.Servlet;

import com.DAO.UserDAO;
import com.Db.DBConnect;
import java.io.IOException;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.User.UserDetails; 
import java.io.PrintWriter;
import javax.servlet.http.HttpSession;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet{
    @Override
    public void doPost(HttpServletRequest req,HttpServletResponse rep)throws ServletException, IOException
    {
        String name = req.getParameter("uname");
        String email = req.getParameter("uemail");
        String password = req.getParameter("upassword");
        
        UserDetails us = new UserDetails();
        us.setName(name);
        us.setEmail(email);
        us.setPassword(password);
        
        UserDAO dao = new UserDAO(DBConnect.getConn());
        boolean f = dao.addUser(us);
        HttpSession session;
        if(f){
          session=req.getSession();
          session.setAttribute("reg-success","Registration Successfully...");
          rep.sendRedirect("register.jsp");
        }
        else{
          session=req.getSession();
          session.setAttribute("failed-msg","Something Went Wrong with Server");
          rep.sendRedirect("register.jsp");  
        }
        
        
            
        
        
        
    }
    
}
