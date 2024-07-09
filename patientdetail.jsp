<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Process Patient Details</title>
    <link rel="stylesheet" type="text/css" href="patientdetailcss.css">
</head>
<body>
    
    <div class="patient-details-container">
        <h2>Processing Patient Details</h2>
       
        <%
            // Retrieve form parameters
            String name = request.getParameter("name");
            String dob = request.getParameter("dob");
            String age = request.getParameter("age");
            String contact = request.getParameter("contact");
            String address = request.getParameter("address");
            
            try {
                // Load the MySQL JDBC driver
                Class.forName("com.mysql.jdbc.Driver");

                // Establish the database connection
                Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/patientdetail", "root", "root");
                PreparedStatement pstmt = con.prepareStatement("INSERT INTO patient_details (name, dob, age, contact, address) VALUES (?, ?, ?, ?, ?)");

                // Set parameter values for the prepared statement
                pstmt.setString(1, name);
                pstmt.setString(2, dob);
                pstmt.setInt(3, Integer.parseInt(age));
                pstmt.setString(4, contact);
                pstmt.setString(5, address);

                // Execute the SQL query to insert patient details
                pstmt.executeUpdate();   
                pstmt.close();
                con.close(); 
                response.sendRedirect("patientregisteredsuccessfully.html");
                
            } catch (Exception e) {
                e.printStackTrace();
                 }
        %>
    </div>
</body>
</html>
