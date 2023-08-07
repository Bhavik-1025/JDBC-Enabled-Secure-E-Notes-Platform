/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.Servlet;

import com.DAO.UserDAO;
import com.Db.DBConnect;
import com.User.UserDetails;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
    {
      
        String LoginEmail = request.getParameter("LUemail");
        String LoginPassword = request.getParameter("LUpassword");
        
        UserDetails us = new UserDetails();
        us.setEmail(LoginEmail);
        us.setPassword(LoginPassword);
        
        UserDAO dao = new UserDAO(DBConnect.getConn());
        UserDetails user = dao.loginUser(us);
        
        if(user!=null)
        {
          HttpSession session=request.getSession();
          session.setAttribute("userD",user);
          response.sendRedirect("home.jsp");
        }
        else
        {
          HttpSession session=request.getSession();
          session.setAttribute("login-failed"," Please Enter Correct Id and Password");
          response.sendRedirect("login.jsp");
        }
        
    }

    
}
