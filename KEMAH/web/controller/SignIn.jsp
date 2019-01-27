<%-- 
    Document   : signIn
    Created on : Jan 18, 2019, 9:03:46 PM
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
    rs = st.executeQuery("select * from user where email='" + email + 
            "' and password='" + pwd + "'");
 
    if (rs.next()) {
        session.setAttribute("email", email);
        session.setAttribute("password", pwd);
        System.out.println("welcome " + user);
        
        response.sendRedirect("../view/listrip.jsp");
    } else {
        System.out.println("Invalid password");
    }
%>
 
   