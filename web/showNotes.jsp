<%-- 
    Document   : showNotes
    Created on : Aug 5, 2023, 2:01:26 PM
    Author     : LENOVO
--%>

<%@page import="java.util.List"%>
<%@page import="com.User.Post"%>
<%@page import="com.DAO.PostDAO"%>
<%@page import="com.Db.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    UserDetails user3 = (UserDetails) session.getAttribute("userD");
    if (user3 == null) {
        response.sendRedirect("login.jsp");
        session.setAttribute("login-error", "  Please login.....");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="all_component/allcss.jsp" %>
    </head>
    <body>
        <%@include file="all_component/navbar.jsp" %>
        <div class="container">
            <h2 class="text-center">All Notes:</h2>
            <div class="row">
                <div class="col-md-12">
                    <%                          if (user3 != null) {
                            PostDAO ob = new PostDAO(DBConnect.getConn());
                            List<Post> post = ob.getData(user3.getId());
                            for (Post po : post) {
                    %>
                    <div class="card mt-3">
                        <img alt="" src="image/paper.png" class="card-img-top mt-2 mx-auto" style="max-width: 100px;">
                        <div class="card-body p-4">

                            <h3 class="card-title text-bold"><%= po.getTitle()%></h3>
                            <p><%= po.getContent()%></p>

                            <p>
                                <b class="text-success">Published By: <%= user3.getName()%></b></br>
                                <b class="text-primary"></b>
                            </p>

                            <p>
                                <b class="text-success">Published Date:<%= po.getPdate()%></b></br>
                                <b class="text-success"></b>
                            </p>

                            <div class="container text-center mt-2">
                                <a href="DeleteServlet?note_id=" class="btn btn-danger">Delete</a>
                                <a href="edit.jsp?note_id=<%= po.getId()%>" class="btn btn-primary">Edit</a>
                            </div>
                        </div>                           

                        <%
                                }
                            }
                        %>
                        
                    </div>
                </div>



                </body>
                </html>
