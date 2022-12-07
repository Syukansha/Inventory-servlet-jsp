<%-- 
    Document   : login
    Created on : Jul 3, 2021, 11:04:55 PM
    Author     : NewUser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login page</title>
        <script>
            function validate(){
                var username = document.form.username.value;
                var password= document.form.password.value;
                
                if(username == null || username==""){
                    alert("username cannot be blank");
                    return false;
                }
                else if(password==null || password==""){
                    alert("password cannot be blank");
                    return false;
                }
            }
        </script>
    </head>
    <body>
        <h1 style="margin-left: 37%">Login using MVC-DAO</h1>
        <form name="form" action="LoginServlet" method="POST" style="margin-left: 40%" onsubmit="return validate()">
            <table>
                <tr>
                    <td>Username:</td>
                    <td><input type="text" name="username"></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="text" name="password"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Submit"> <input type="reset" name="Reset" value="Reset"></td>
                </tr>
                <tr>
                <span style="color: red">
                    <%=(request.getAttribute("errMsg")== null)?"": request.getAttribute("errMsg")%>
                </span>
                </tr>
            </table>
        </form>
    </body>
</html>
