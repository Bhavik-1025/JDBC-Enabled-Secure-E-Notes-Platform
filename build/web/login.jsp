
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
                            <i class="fa fa-user-secret fa-3x" aria-hidden="true"></i>
                            <h4>Login</h4>
                        </div>

                       <%
                          String regMsg = (String) session.getAttribute("login-failed");  
                          if(regMsg != null){
                        %>
                        
                        <div class="alert alert-danger" roles="alert"><i class="fa fa-frown-o" aria-hidden="true"></i><%=regMsg%></div>
                        
                        <%
                            session.removeAttribute("login-failed");
                            }
                        %>
                        
                        <%
                            String withoutlogin = (String)session.getAttribute("login-error");
                            if(withoutlogin!=null)
                            {
                        %>
                            <div class="alert alert-danger" roles="alert"><i class="fa fa-frown-o" aria-hidden="true"></i><%=withoutlogin%></div>
                        <%
                            session.removeAttribute("login-error");
                            }
                        %>
                            
                        <%
                            String logout = (String)session.getAttribute("logout-done");
                            if(logout!=null)
                            {
                        %>
                            <div class="alert alert-success" roles="alert"><%=logout%></div>
                        <%
                            session.removeAttribute("logout-done");
                            }
                        %>

                        <div class="card-body">
                            <form action="loginServlet" method="post">
                                <div class="form-group">
                                    <label>Enter Email-ID</label>
                                    <input type="email" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" name="LUemail">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Enter Your Password</label>
                                    <input types="password" class="form-control" id="exampleInputPassword" name="LUpassword">
                                </div>
                                <button type="submit" class="btn btn-primary badge-pill btn-block bg-custom">Login</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="all_component/footer.jsp"%>
    </body>
</html>
