<%-- 
    Document   : Booking2
    Created on : Jan 26, 2019, 10:32:21 PM
    Author     : user
--%>

<%@page import="koneksi.DB_Connection"%>
<%@ page import ="java.sql.*" %>
<%
    String id_trip = request.getParameter("id_trip");
    String nama = request.getParameter("nama");
    String pNumber = request.getParameter("noHp");
    Integer NOB = Integer.parseInt(request.getParameter("NB"));

    
    DB_Connection db = new DB_Connection();
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = db.getConn();
    Statement st = con.createStatement();

    int i = st.executeUpdate("insert into pemesanan( id_trip,NoHp, "
            + "NamaPemesan,jum_booking) values ('" + id_trip + "','" + pNumber + "','" + nama
            + "','" + NOB + "')");
    int j = st.executeUpdate("update trip set max_orang=(max_orang-"+NOB+")where id_trip="+id_trip); 
    if (i > 0) {%>
<script>

    var con = confirm("Complete Input Booking\nKlik OK For Sback to List Trip");
    if (con) {    
        window.location = "../view/listrip.jsp";
    } else {
        document.write("Still Here");
    }


</script>
<%    }
        else {
        response.sendRedirect("../index.jsp");
    }
%>
