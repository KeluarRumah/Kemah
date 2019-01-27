<%-- 
    Document   : listrip
    Created on : Jan 18, 2019, 8:16:09 PM
    Author     : XIDER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("name");

    if ((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {


%>
You have not Sign In<br/>
<a href="../index.jsp">Sign In</a>
<%} else {
%>
<%
    String jk, desk,ft,id;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kemah", "root", "");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM trip ORDER BY id_trip DESC");
%>
<html lang="en">
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>List Trip</title>

    </head>


    <body>
        <!--==========================
          Header
        ============================-->

        <div class="header">

            <div class="kemahIcon">
                <div class="search">
                    <input type="search" name="cari" rows=2
                           placeholder=" Search or Jump to" size=70 >
                    <div class="imgNews">
                        <img type="image"class="imgSearch" src="image/search.png" alt="" width="7%">

                    </div>


                </div>
                <a href="listrip.jsp">
                    <img src="image/kemah.png" width="10%" >
                </a>

            </div>
            <div class="createTripText" >


                <div class="trip">
                    <a href="tambahTrip.jsp" class="linkHeader">Create a Trip</a> 
                    <div class="profileText">
                        <a href="#html" class="linkHeader" >Profile</a>
                        <div class="signOutText">
                            <a href="../index.jsp" class="linkHeader" >Sign Out</a>
                        </div>
                    </div>

                </div>

                <!-- Uncomment below if you prefeto use an image logo -->
                <!-- <a href="#body"><img src="ig/logo.png" alt="" title="" /></a>-->
            </div>

        </div>


        <div class="main">
            <div class="triptitle" >
                Trip
            </div>
            <div  class="listTrip">

                <tr>
                    <td>

                        
                        

                        <%
                            if (rs != null) {
                                while (rs.next()) {
                                    jk = rs.getString("nama_trip");
                                    desk = rs.getString("deskripsi");
                                    ft = rs.getString("foto");
                                    id = rs.getString("id_trip");
                        %>
                       
                        <table  bgcolor="#ffffff"height="98%" widht="400%" >
                            
                            <br>
                            
                            <tr >
                                
                                    <img src="image/<%=ft%>"  height="98%" width="35%" >
                                
                                <td>
                                    <font size="4">&nbsp;<b> <%=jk%> </b>
                                </td>
                                
                                
                                
                            <tr>
                                <td>
                                    <a href ="Booking1.jsp?id_trip=<%=id%>" class="text">
                                    <font size="3">     &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;   
                                         <%=desk%>
                                    </a>
                                </td>
                            </tr>

                            <tr>
                                <td>  
                                </td>
                                
                            
                            </tr>
                            
                            
                        </table>
                                
                                
                        <%
                                }
                            }
                        %>

                  
            </div>
            <div class="tripLane">

            </div>
            <div class="newsTitle">
                News
            </div>
            <div class="newsLane">

            </div>
            <div class="newsList">
                <img  class="imgNews" src="image/komodo.jpg" width="37%" height="100%">
                <a href="Booking1.jsp" class="linkDescription">description</a>
            </div>


            <div class="newsList1">
                <img  class="imgNews" src="image/2.jpg"  width="37%" height="100%">
                <a href="Booking1.jsp" class="linkDescription">description</a>
            </div>
            <div class="newsList2">
                <img  class="imgNews" src="image/1.jpg"  width="37%" height="100%">
                <a href="Booking1.jsp" class="linkDescription">description</a>
            </div>
            <div class="loadMore">        
                Load More
            </div>



        </div>

        <div class="footer">

            <div class="ft">
                <br>
                Features
                <div class="trfeature">
                    <br>
                    <br>
                    <br>
                    Trip
                    <br>
                    <br>
                    <br>
                    News
                    <br>
                    <br>
                    <br>
                    Schedule
                </div>
            </div>
            <div class="kf">
                <br>
                <br>
                <br>
                <br>
                <img src="image/kemah.png" width="34%">

            </div>
            <div class="fu">

                Follow Us
                <div class="fuf">
                    <img src="image/fb.png" alt="" width="25%" height="60%">
                    <table>
                        <tr>
                            <td></td>
                        </tr>
                        <td><td>Facebook</td></td>
                    </table>
                    <br>
                    <img src="image/twitter.png" alt="" width="25%" height="60%">
                    <table>
                        <tr>
                            <td></td>
                        </tr>
                        <td><td>Twitter</td></td>
                    </table>
                    <br>
                    <img src="image/ig.png" alt="" width="25%" height="60%">
                    <table>
                        <tr>
                            <td></td>
                        </tr>
                        <td><td>Instagram</td></td>
                    </table>
                </div>
            </div>
            <br>
            <br>
            <div class="cfk">
                <br>
                <br>



                &#169 kemah
            </div>


        </div>






    </div>
</body>
<%
    }
%>
</html>

