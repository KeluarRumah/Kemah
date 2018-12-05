<%-- 
    Document   : logout
    Created on : Dec 1, 2018, 7:03:44 PM
    Author     : XIDER
--%>


<%
session.setAttribute("email", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
