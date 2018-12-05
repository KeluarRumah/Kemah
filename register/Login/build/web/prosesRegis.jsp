<%-- 
    Document   : prosesRegis
    Created on : Dec 1, 2018, 7:04:21 PM
    Author     : XIDER
--%>

<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("name");
    String email = request.getParameter("email");
    String pNumber = request.getParameter("phonenumber");
    String pwd = request.getParameter("password");


    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kemah",
            "root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
   int i = st.executeUpdate("insert into register( name,email, phonenumber, "
           + "password) values ('" + user + "','" + email + "','" + pNumber + 
           "','" + pwd + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>
