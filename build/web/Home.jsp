<%-- 
    Document   : Home
    Created on : Jul 4, 2021, 4:42:04 PM
    Author     : NewUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <div style="text-align: center">
            <h1>Home Page!</h1>
            <p>Welcome <%= request.getSession().getAttribute("username") %></p>
            <form action="LogoutServlet" method="post">
                <input type="submit" value="logout">
            </form>
        </div>
        
    </body>
</html>
