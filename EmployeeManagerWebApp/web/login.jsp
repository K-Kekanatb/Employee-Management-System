

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <p>Please enter your login details below:</p>
        <form action="j_security_check" method="POST">
            <table>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="j_username" required=""/></td>
                </tr>
                 <tr>
                    <td>Password</td>
                    <td><input type="password" name="j_password" required=""/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="LOGIN"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
