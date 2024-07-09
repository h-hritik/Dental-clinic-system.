<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    response.setContentType("text/html;charset=UTF-8");
    
    // Retrieve form parameters
    String id = request.getParameter("id");
    String date = request.getParameter("date");
    String time = request.getParameter("time");

    try {
        // Load the MySQL JDBC driver
        Class.forName("com.mysql.jdbc.Driver");
        
        // Establish the database connection
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/appointment2", "root", "root");
        
        // Update the appointment details in the database
        PreparedStatement pstmt = con.prepareStatement("UPDATE appointments SET date = ?, time = ? WHERE id = ?");
        pstmt.setString(1, date);
        pstmt.setString(2, time);
        pstmt.setInt(3, Integer.parseInt(id));
        int rowsAffected = pstmt.executeUpdate();
        
        // Close the PreparedStatement and Connection
        pstmt.close();
        con.close();
        
        // Redirect back to the view appointments page after successful update
        response.sendRedirect("AdminView.jsp");
    } catch (Exception e) {
        // Handle any errors
        out.println("Error updating appointment: " + e.getMessage());
    }
%>
