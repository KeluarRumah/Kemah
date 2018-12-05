<%-- 
    Document   : login
    Created on : Dec 1, 2018, 7:03:29 PM
    Author     : XIDER
--%>


        
        <%@ page import ="java.sql.*" %>
 
<%
    String email = request.getParameter("email");   
    String user = request.getParameter("name");
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection
        ("jdbc:mysql://localhost:3306/kemah","root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from register where email='" + email + 
            "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("email", email);
        System.out.println("welcome " + user);
        System.out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("sukses.jsp");
    } else {
        System.out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>
   
