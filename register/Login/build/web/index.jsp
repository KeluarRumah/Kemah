<%-- 
    Document   : index.jsp
    Created on : Dec 1, 2018, 6:57:59 PM
    Author     : XIDER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Login</title>
</head>
<body>
    <form method="post" action="login.jsp"> 
        <center>
            <table border="1" width="22%">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>

                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Yet Not Registered!! <a href="registrasi.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
        </center>
    </form>
</body>
</html>
