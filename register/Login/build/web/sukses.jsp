<%-- 
    Document   : sukses
    Created on : Dec 1, 2018, 7:04:46 PM
    Author     : XIDER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        String user = request.getParameter("name");
    if ((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {
%>
Anda Belum login <br/>
<a href="index.jsp">Silahkan Login</a>
<%} else {
%>
Welcome
<a href='logout.jsp'>Log out</a>
<%
    }
%>