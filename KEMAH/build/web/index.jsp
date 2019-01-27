<%-- 
    Document   : index
    Created on : Jan 18, 2019, 8:15:05 PM
    Author     : XIDER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html lang="en">
    <center>
        <head>
             <link rel="stylesheet" type="text/css" href="login.css">
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
                  integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
                  crossorigin="anonymous">
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Login</title>
        </head>
        <body>
            <form method="post" action="controller/SignIn.jsp">  
                <center>
                    <div class="Kemah">Kemah</div>
                    <div class="input-field">
                        <div class="textbox">
                            <i class="far fa-envelope fa-lg" aria-hidden="true"></i>
                            <input type=text placeholder="Email" name="email" value="" />
                        </div>
                        <div class="textbox">
                            <i class="fas fa-lock fa-lg" aria-hidden="true"></i>
                            <input type=password placeholder="Password" name="password" value="" />
                        </div>
                        <div id="forgot"><a class="link" href="forgot.jsp">Forgot Password?</a></div>
                        <input type="submit" value="Sign In" class="button">
                        <div class="signup">Didn't Have an Account? <a href="view/signUp.jsp" class="link">Sign Up</a></div>
                    </div>
                </center>
            </form>

            </form>
        </body>
</html>