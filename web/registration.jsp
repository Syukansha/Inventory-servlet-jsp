<%-- 
    Document   : registration
    Created on : Jul 11, 2021, 12:25:04 AM
    Author     : NewUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
    </head>
    <body>
        <h1>User Registration</h1>
        <form action="RegisterServlet" method="POST">
            <ul>
                <li>Name</li>
                <input type="text" name="name" value=""/>
                
                <li>Email</li>
                <input type="text" name="email" value=""/>
                
                <li>Username</li>
                <input type="text" name="username" value=""/>
                
                <li>Password</li>
                <input type="text" name="password" value=""/>
                
                <li>Confirm Password</li>
                <input type="text" name="cpassword" value=""/>
            </ul>
            <input type="submit" value="Confirm Registration">&nbsp;<input type="reset" value="Reset">
        </form>
    </body>
</html>
