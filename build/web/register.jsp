<%-- 
    Document   : register
    Created on : Aug 3, 2023, 12:16:43 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="all_component/allcss.jsp" %>
    </head>
    <body>
        <%@include file="all_component/navbar.jsp" %>
        <div class="container-fluid div-color">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-5">
                        <div class="card-header text-center text-white bg-custom">
                            <i class="fa fa-user fa-3x" aria-hidden="true"></i>
                            <h4>Registration</h4>
                        </div>
                        
                        <%
                          String regMsg = (String) session.getAttribute("reg-success");  
                          if(regMsg != null){
                        %>
                        
                        <div class="alert alert-success" roles="alert"><%=regMsg%> Login<a href="login.jsp">  Click Here..</div>
                        
                        <%
                            session.removeAttribute("req-success");
                            }
                        %>
                        
                        <%
                          String failMsg = (String) session.getAttribute("failed-msg");  
                          if(failMsg != null){
                        %>
                        
                        <div class="alert alert-danger" roles="alert"><%=failMsg%></div>
                        
                        <%
                            session.removeAttribute("failed-msg");
                            }
                        %>
                        <div class="card-body">
                            <form action="UserServlet" method="post">
                                <div class="form-group">
                                    <label>Enter Your Full Name</label>
                                    <input type="text" class="form-control" id="exampleInputName" aria-describedby="emailHelp" name="uname">
                                </div> 
                                <div class="form-group">
                                    <label>Enter Your Email Address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" name="uemail">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Enter Password</label>
                                    <input types="password" class="form-control" id="exampleInputPassword" name="upassword">
                                    <button class="mt-3 bg-custom" type="button" id="showPasswordButton" onclick="togglePasswordVisibility()">
                                        <i id="eyeIcon" class="fa fa-eye btn btn-primary badge-pill btn-block bg-custom"></i>
                                    </button>
                                </div>
                                <button type="submit" class="btn btn-primary badge-pill btn-block bg-custom">Register</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="all_component/footer.jsp"%>
    </body>
</html>
