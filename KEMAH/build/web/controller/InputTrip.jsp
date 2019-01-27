<%-- 
    Document   : prosesTambahTrip1
    Created on : Jan 21, 2019, 2:18:21 AM
    Author     : user
--%>

<%@page import="koneksi.DB_Connection"%>
<%@ page import ="java.sql.*" %>
<%
    
    String jt = request.getParameter("judulTrip");
    String desk = request.getParameter("deskripsi");
    String email = request.getParameter("email");
    String note = request.getParameter("note");
    String date = request.getParameter("tglberangkat");
    String date1 = request.getParameter("tglpulang");
    String kat = request.getParameter("jenistrip");
    String foto=request.getParameter("file");
    String mp = request.getParameter("mp");
    
    
    int max= Integer.parseInt(request.getParameter("maxperson"));
    int price = Integer.parseInt(request.getParameter("price"));


    DB_Connection db = new DB_Connection();
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = db.getConn();
    Statement st = con.createStatement();
    
    int i = st.executeUpdate("insert into trip(nama_trip,deskripsi,meeting_point,foto,kategori,tgl_awal,tgl_akhir,max_orang,harga,email) values "
            + "('"+ jt + "','" + desk + "','" + mp + "','" +foto+ "','" + kat+ "','" + date + "','" + date1 + "','"+max+"','"+price+"','" + email + "')");
    if (i > 0) {%>
<script>

    var con = confirm("Input was Success\nKlik OK");
    if (con) {
        window.location = "../view/listrip.jsp";
    } else {
        document.write("Still Here");
    }
</script>
<%    }
        else {
        
response.sendRedirect("../view/tambahTrip.jsp");
        
}
%>


