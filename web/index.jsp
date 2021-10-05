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
                <tr>
                    <td colspan="2">
                        <%
                            String error = request.getParameter("error");
                            if (error!=null && error.equals("1")) {
                                out.println("Incorrect Username or Password");
                            }
                            else if (error!=null && error.equals("2")) {
                                out.println("You must Login to Continue");
                            }
                            else if (error!=null && error.equals("3")) {
                                out.println("You have successfully Logged Out");
                            }
                            else {
                                out.println("&nbsp;");
                            }
                        %>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
