<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <!-- Include Bootstrap for styling -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2>Patient Details</h2>
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Date of Birth</th>
                    <th>Age</th>
                    <th>Contact</th>
                    <th>Address</th>
                </tr>
            </thead>
            <tbody>
                <%-- Fetch patient details from the database and display them here --%>
                <%
                    try {
                        // Establish the database connection
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/patientdetail", "root", "root");
                        PreparedStatement pstmt = con.prepareStatement("SELECT * FROM patient_details");
                        ResultSet rs = pstmt.executeQuery();

                        while (rs.next()) {
                            int id = rs.getInt("id");
                            String name = rs.getString("name");
                            String dob = rs.getString("dob");
                            String age = rs.getString("age");
                            String contact = rs.getString("contact");
                            String address = rs.getString("address");
                %>
                <tr>
                    <td><%= id %></td>
                    <td><%= name %></td>
                    <td><%= dob %></td>
                    <td><%= age %></td>
                    <td><%= contact %></td>
                    <td><%= address %></td>
                </tr>
                <%
                        }
                        rs.close();
                        pstmt.close();
                        con.close();
                    } catch (Exception e) {
                        out.println("Error fetching data: " + e.getMessage());
                    }
                %>
            </tbody>
        </table>
        <button class="btn btn-secondary" onclick="goBack()">Back</button> <!-- Back button -->
    </div>

    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</body>
</html>
