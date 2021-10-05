<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="styles.css" />
        <title>JSP Page</title>
    </head>
    <body>
        <form action="LoginServlet" method="POST">
            <table>
                <tr>
                    <td colspan="2"><strong>Login Page</strong></td>
                </tr>
                <tr>
                    <td>Username:</td>
                    <td><input type="text" name="username" size="40"></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" size="40"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Login"></td>
                    <td><input type="reset" value="Clear"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
