<%-- 
    Document   : addNote
    Created on : Aug 4, 2023, 10:44:42 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    UserDetails user1 = (UserDetails)session.getAttribute("userD");
    if (user1 == null) {
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
            <h1 class="text-center mt-5">Add Your Notes</h1>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <form action="AddNoteServlet" method="post">
                            <div class="form-group mt-3">
                                <%
                                  UserDetails us = (UserDetails) session.getAttribute("userD");
                                  if (us != null)
                                {%>
                                  <input type="hidden" value="<%= us.getId()%>" name="uid">
                                <%}
                                %>


                                <label for="exampleInputEmail1">Enter Title</label>
                                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="title" required="required">

                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Enter Content</label>
                                <textarea rows="9" cols="" class="form-control" name="content" required="required""></textarea>
                            </div>

                            <div class="container text-center">
                                <button type="submit" class="btn btn-primary">Add Notes</button>
                            </div>
                        </form>
                    </div>
                </div>


            </div>
        </div>
        <%@include file="all_component/footer.jsp" %>
    </body>
</html>
