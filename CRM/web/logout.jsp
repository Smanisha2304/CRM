<%-- 
    Document   : logout.jsp
    Created on : Nov 28, 2023, 9:13:26 PM
    Author     : Rahul Sharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
    </head>
    <body>
        <% response.sendRedirect("login.html");
        session.invalidate();
        %>
    </body>
</html>
