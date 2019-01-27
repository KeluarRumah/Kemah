<%-- 
    Document   : prosesRegis
    Created on : Jan 18, 2019, 8:49:36 PM
    Author     : XIDER
--%>

<%@page import="koneksi.DB_Connection"%>
<%@ page import ="java.sql.*" %>
<%
    String email = request.getParameter("email");
    String nama = request.getParameter("nama");
    String pNumber = request.getParameter("no_hp");
    String pwd = request.getParameter("password");

    
    DB_Connection db = new DB_Connection();
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = db.getConn();
    Statement st = con.createStatement();

    int i = st.executeUpdate("insert into user( email, nama, no_hp, "
            + "password) values ('" + email + "','" + nama + "','" + pNumber
            + "','" + pwd + "')");
    if (i > 0) {%>
<script>

    var con = confirm("Complete registration\nKlik OK For Sign In");
    if (con) {
        window.location = "../index.jsp";
    } else {
        document.write("Still Here");
    }


</script>
<%    }
        else {
        response.sendRedirect("../index.jsp");
    }
%>
