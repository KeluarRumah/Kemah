<%-- 
    Document   : responsListTrip
    Created on : Jan 26, 2019, 1:24:57 AM
    Author     : XIDER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<%
    
    String jt = request.getParameter("judulTrip");
    String desk = request.getParameter("deskripsi");
    String email = request.getParameter("email");
    String note = request.getParameter("note");
    String date = request.getParameter("tglberangkat");
    String kat = request.getParameter("jenistrip");
    String foto = request.getParameter("file");
    String mp = request.getParameter("mp");
    
    int max = Integer.parseInt(request.getParameter("maxperson"));
    int price = Integer.parseInt(request.getParameter("price"));
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kemah", "root", "");
    Statement st = con.createStatement();
    st = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
    ResultSet rs = st.executeQuery("SELECT *" + "FROM trip ORDER BY id_trip");
    while (rs.next()) {
        String judulTrip = rs.getString("judulTrip");
        String deskripsi = rs.getString("deskripsi");
        
    }
    if (rs != null) {
        response.sendRedirect("listrip.jsp");
    } else {
        
        response.sendRedirect("tambahTrip.jsp");
        
    }
%>
