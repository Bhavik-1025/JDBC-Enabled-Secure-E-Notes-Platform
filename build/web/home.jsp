<%-- 
    Document   : home
    Created on : Aug 4, 2023, 6:26:09 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    UserDetails user2 = (UserDetails)session.getAttribute("userD");
    if (user2 == null) {
        response.sendRedirect("login.jsp");
        session.setAttribute("login-error","  Please login.....");
    }
%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="all_component/allcss.jsp"%>
    </head>
    <body>
        
        <div class="container-fluid">
            <%@include file="all_component/navbar.jsp" %>
            <div class="card py-5">
                <div class="card-body text-center">
                    <img alt="Start Writing Notes" src="image/paper.png" class="img-fluid mx-auto" style="max-width: 330px">
                    <h1 class="mt-3">START TAKING YOUR NOTES</h1>
                    <a href="addNote.jsp" class="btn btn-outline-primary mt-3">Start Here</a>
                </div>
            </div>
                 
        </div>
            <%@include file="all_component/footer.jsp" %>
    </body>
</html>
