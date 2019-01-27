<%-- 
    Document   : Signup
    Created on : Jan 18, 2019, 8:30:36 PM
    Author     : XIDER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <center>
        <head>
             <link rel="stylesheet" type="text/css" href="Signup.css">
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
                  integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
                  crossorigin="anonymous">
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <title>Signup</title>
        </head>
        <body>  
            <form method="post" action="../controller/Registrasi.jsp">
         <div class="signup">Sign Up</div>
                <div class="input-field">
                    <div class="textbox">
                        <i class="fas fa-user fa-lg" aria-hidden="true"></i>
                        <input type=text placeholder="Fullname" name="nama" value="" />
                    </div>
                    <div class="textbox">
                        <i class="far fa-envelope fa-lg" aria-hidden="true"></i>
                        <input type=text placeholder="Email" name="email" value="" />
                    </div>
                    <div class="textbox">
                        <i class="fas fa-phone" aria-hidden="true"></i>
                        <input type=text placeholder="Phone Number" name="no_hp" value="" />
                    </div>
                    <div class="textbox">
                        <i class="fas fa-lock fa-lg" aria-hidden="true"></i>
                        <input type=password placeholder="Password" name="password" value="" />
                    </div>
                    <input type="submit" value="Sign Up" class="button">
                    <div class="signin">Already Have an Account? <a href="../index.jsp" class="link">Sign In</a></div>
                </div>
            </form>
        </body>
</html>
