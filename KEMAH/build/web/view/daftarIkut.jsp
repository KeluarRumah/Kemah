<%-- 
    Document   : daftarIkut
    Created on : Jan 18, 2019, 8:23:51 PM
    Author     : XIDER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="koneksi.DB_Connection"%>
<%
    String id = request.getParameter("id_trip");
    String namaPe;
    Class.forName("com.mysql.jdbc.Driver");
    DB_Connection db = new DB_Connection();
    Connection con = db.getConn();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM pemesanan where id_trip='" + id + "' ");
%>
<html lang="en">
    <head>
        <link rel="stylesheet" type="text/css" href="styleIkut.css">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Daftar Ikut</title>

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
                        <img type="image"class="imgSearch" src="search.png" alt="" width="7%">

                    </div>


                </div>
                <a href="listrip.jsp">
                    <img src="../view/image/kemah.png" width="10%" >
                </a>

            </div>
            <div class="createTripText" >


                <div class="trip">
                    <a href="tambahTrip.jsp" class="linkHeader">Create a Trip</a> 
                    <div class="profileText">
                        <a href="#html" class="linkHeader" >Profile</a>
                        <div class="signOutText">
                            <a href="index.jsp" class="linkHeader" >Sign Out</a>
                        </div>
                    </div>

                </div>

                <!-- Uncomment below if you prefeto use an image logo -->
                <!-- <a href="#body"><img src="ig/logo.png" alt="" title="" /></a>-->
            </div>

        </div>



        <div class="main">

            <div class="listPeople" >
                <%
                    while (rs.next()) {
                        namaPe = rs.getString("NamaPemesan");


                %>
                <img src="gambarProfil.png" width="41%" height="100%">
                <table bgcolor="white" >
                    <br>
                    <tr>

                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;<%=namaPe%>
                        </td>
                    </tr>
                </table>
                <%
                    }
                %>
            </div>
            <div class="More">
                More
            </div>
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
            <img src="../view/image/kemah.png" width="34%">

        </div>
        <div class="fu">

            Follow Us
            <div class="fuf">
                <img src="fb.png" alt="" width="25%" height="60%">
                <table>
                    <tr>
                        <td></td>
                    </tr>
                    <td><td>Facebook</td></td>
                </table>
                <br>
                <img src="twitter.png" alt="" width="25%" height="60%">
                <table>
                    <tr>
                        <td></td>
                    </tr>
                    <td><td>Twitter</td></td>
                </table>
                <br>
                <img src="ig.png" alt="" width="25%" height="60%">
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
</html>
