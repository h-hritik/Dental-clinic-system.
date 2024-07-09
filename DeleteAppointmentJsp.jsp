<%@page import="java.io.*, java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Appointment</title>
</head>
<body>
    <%-- Get the appointment ID from the request --%>
    <% int id = Integer.parseInt(request.getParameter("id")); %>
    
    <%-- Define the JDBC connection parameters --%>
    <% String url = "jdbc:mysql://localhost:3306/appointment2"; %>
    <% String username = "root"; %>
    <% String password = "root"; %>
    
    <%-- Define the SQL query to delete the appointment --%>
    <% String query = "DELETE FROM appointments WHERE id = ?"; %>
    
    <%-- Perform the delete operation --%>
    <% try {
           // Load the MySQL JDBC driver
           Class.forName("com.mysql.jdbc.Driver");
           
           // Establish the database connection
           Connection con = DriverManager.getConnection(url, username, password);
           
           // Prepare the statement
           PreparedStatement pstmt = con.prepareStatement(query);
           pstmt.setInt(1, id);
           
           // Execute the delete statement
           pstmt.executeUpdate();
           
           // Close the resources
           pstmt.close();
           con.close();
            response.sendRedirect("admindelete.jsp");
       } catch (Exception e) {
           e.printStackTrace();
       }
    %>
</body>
</html>
