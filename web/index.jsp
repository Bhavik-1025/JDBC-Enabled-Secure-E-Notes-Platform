
<%@page import="java.sql.Connection"%>
<%@page import="com.Db.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
            .back-img{
                background: url("image/picture1.jpg");
                background-size: cover;
                background-position: center;
                width: 100%;
                height: 80vh;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="all_component/allcss.jsp" %>
    </head>
    <body>
        <%@include file="all_component/navbar.jsp" %>
        
        <div class="container-fluid back-img">
            <div class="text-center">
                <h1 class="text-white">E-Notes <i class="fa fa-book" aria-hidden="true"></i> Save Your Notes</h1>
                <a href="login.jsp" class="btn btn-light"><i class="fa fa-user-circle mr-2" aria-hidden="true"> Login</a>
                <a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus mr-2" aria-hidden="true"></i> Register</a>
            </div>
        </div>
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
