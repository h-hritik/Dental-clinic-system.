<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Upcoming Appointments</title>
    <!-- Include Bootstrap for styling -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .appointment-list {
            margin-top: 50px;
        }
        .appointment-list h3 {
            margin-bottom: 20px;
            color: #007bff; /* Blue color for heading */
        }
        .appointment-list ul {
            list-style-type: none;
            padding: 0;
        }
        .appointment-list li {
            margin-bottom: 20px;
            border: 1px solid #ccc;
            padding: 10px;
            background-color: #f8f9fa; /* Light gray background */
            border-radius: 5px; /* Rounded corners */
        }
        .appointment-list li strong {
            margin-right: 5px;
            font-weight: bold;
            color: #333; /* Dark text color */
        }
    </style>
</head>
<body>
    <main>
        <div class="container">
            <div class="appointment-list">
                <h3>Upcoming Appointments</h3>
                <ul>
                    <% 
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/appointment2", "root", "root");
            
                            PreparedStatement pstmt = con.prepareStatement("SELECT * FROM appointments WHERE date >= CURDATE() ORDER BY date ASC");
                            ResultSet rs = pstmt.executeQuery();
                            while (rs.next()) {
                                String patientName = rs.getString("name");
                                String appointmentDate = rs.getString("date");
                                String appointmentTime = rs.getString("time");
                    %>
                    <li>
                        <strong>Patient:</strong> <%= patientName %><br>
                        <strong>Date:</strong> <%= appointmentDate %><br>
                        <strong>Time:</strong> <%= appointmentTime %>
                    </li>
                    <%
                            }
                            rs.close();
                            pstmt.close();
                            con.close();
                        } catch (Exception e) {
                            out.println("Error fetching appointments: " + e.getMessage());
                        }
                    %>
                </ul>
            </div>
        </div>
    </main>
</body>
</html>
