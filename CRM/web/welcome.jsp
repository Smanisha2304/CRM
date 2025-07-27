<%-- 
    Document   : welcome
    Created on : Nov 30, 2023, 3:19:37 PM
    Author     : Rahul Sharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome page</title>
    </head>
    <body>
        <%
            String name = (String)session.getAttribute("name");
        %>
        <h1>Welcome<%=name%>  </h1>
        <h1>Sign Up Successfully..!!</h1>
        <p>
            please Login again with your id ,password and your contribution role in our company for better interact and getting knowledge about us ....
        </p>
        <a href="login.html">LOGIN..!!</a>
    </body>
</html>
