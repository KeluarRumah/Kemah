<%-- 
    Document   : tambahTrip
    Created on : Jan 18, 2019, 8:18:15 PM
    Author     : XIDER
--%>
<%@page import="java.util.Set" %>
<%@page import="java.util.HashSet" %>
<%@page import="java.util.Random" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Tambah Trip</title>
        <link rel="stylesheet" type="text/css" href="tambahTrip.css">
    </head>

    <body>
        <form action="../controller/InputTrip.jsp" method="POST">
        <!--==========================
          Top Bar
        ============================-->


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

        <div class=tambah_trip>
            <center>
                <br>
                <br>
                <br>
                <font size=7><b>Create a trip</b></font>
                <br>
                <br>
                <font size=4>
                <table cellspacing=15>
                    <tr><td>Trip Title<td><input type=text name=judulTrip 
                                                 size=30 placeholder="Trip title">
                
                    <tr><td>Trip Description<td>
                            <textarea name=deskripsi cols=25 rows=6 
                                      placeholder="Trip Description...">
                            </textarea>
                    <tr><td>Add Destination Photo<td><input type=image name=tempatwisata
                                                            src="../view/image/camera.png" 
                                                            width="100" 
                                                            height="100" 
                                                            alt="">
                    <tr><td><td><input type="file" name="file">                                       
                    <tr><td>email<td><input type="email" name="email">        
                    <tr><td>Meeting Point<td><textarea name="mp" cols = 28 rows=3></textarea><td><input type=image name=tempattemu src="camera.png"
                                   width="50" height="50" alt="">
                    <tr><td>Note<td><textarea name="note" rows=3></textarea>
                    <tr><td>Trip Date<td><input type=date name=tglberangkat>        
                    <tr><td>Back to home<td><input type=date name=tglpulang>     
                    <tr><td>Trip Category<td><select name=jenistrip>
                                <option>Trip Category
                                <option>Mountain
                                <option>Beach
                                <option>Camp
                                <option>Lake
                            </select>
                    <tr><td>Max People<td><input type="number" name=maxperson>
                    <tr><td>Price<td><input type="number" name=price placeholder="Rp  ">
                    

                
                </table>
                    <input type="submit" value=NEXT class="Next">
                
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
    </form>
</body>

</html>
