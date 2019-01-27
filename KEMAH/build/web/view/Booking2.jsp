<%-- 
    Document   : Booking2
    Created on : Jan 18, 2019, 8:23:05 PM
    Author     : XIDER
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="koneksi.DB_Connection"%>
<%    
String id=request.getParameter("id_trip");

    Class.forName("com.mysql.jdbc.Driver");
    DB_Connection db=new DB_Connection();
    Connection con = db.getConn();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM trip where id_trip='"+id+"' ");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Booking Trip</title>
        <link rel="stylesheet" type="text/css" href="Booking2.css">
    </head>

    <body>
        <form action="../controller/InputBooking.jsp" method="POST">
        <!--==
        ========================
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


        <div class=Booking>
            <%
            while (rs.next()) {
     String  jk = rs.getString("nama_trip");
     String  id_t = rs.getString("id_trip");
     
            %>
            <center>
                <br>
                <br>
                <br>
                <font size=7><b><%=jk%></b></font>
                <br>
                <br>
                <font size=4>
                <table cellspacing="30">
                    <tr><td>Id Trip<td><input type="number" name="id_trip" readonly="" value="<%=id_t %>">
                    <tr><td>Name<td><input type=text name=nama placeholder="Name">
                    <tr><td>Number of Booking<td><input type="number" placeholder="Number" name="NB">
                        <td>people(s)
                    <tr><td>No Hp<td><input type="number" placeholder="Input No Hp...." name="noHp">       
                </table>
                <a href="listrip.jsp">
                    <button type="submit" class="Next"><span>Confirm Booking</span></button>
                </a>
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
                <img src="../view/image/kemah.png" width="34%">

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
                <%
                }
                %>    


                &#169 kemah
            </div>


        </div>






    </div>
</body>
</html>
