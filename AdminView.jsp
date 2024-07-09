
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
        <h2>Appointment Management</h2>
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Contact</th>
                    <th>Speciality</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
            <a href="AdminView.jsp"></a>
                <%-- Fetch appointments from the database and display them here --%>
                <%
                    try {
                        // Load the MySQL JDBC driver
                       

                        // Establish the database connection
                         Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/appointment2", "root", "root");

                        PreparedStatement pstmt = con.prepareStatement("SELECT * FROM appointments"); // Update table name if needed
                        ResultSet rs = pstmt.executeQuery();

                        while (rs.next()) {
                            int id = rs.getInt("id");
                            String patientName = rs.getString("name");
                            String patientEmail = rs.getString("email");
                            String appointmentDate = rs.getString("date");
                            String appointmentTime = rs.getString("time");
                            String patientContact = rs.getString("contact");
                            String patientSpeciality = rs.getString("speciality");
                %>
                <tr>
                    <td><%= id %></td>
                    <td><%= patientName %></td>
                    <td><%= patientEmail %></td>
                    <td><%= appointmentDate %></td>
                    <td><%= appointmentTime %></td>
                    <td><%= patientContact %></td>
                    <td><%= patientSpeciality %></td>
                    <td>
                        <a href="#" onclick="updateAppointment('<%= id %>')" class="btn btn-danger">Update</a>
                        <a href="#" onclick="deleteAppointment('<%= id %>')" class="btn btn-danger">Delete</a>
                    </td>
                </tr>
                <%
                        }
                        rs.close();
                        pstmt.close();
                        con.close();
                    } catch (Exception e) {
                        out.println("Error fetching data: " + e.getMessage()); // Display a meaningful error message
                    }
                %>
                <%-- Repeat for each appointment --%>
            </tbody>
        </table>
    </div>
             <button onclick="goBack()" class="btn btn-primary">Back</button> <!-- Back button -->
</body>
</html>

<script>
function deleteAppointment(id) {
    if (confirm('Are you sure you want to delete this appointment?')) {
        window.location.href = 'DeleteAppointmentJsp.jsp?id=' + id;
    }
}
function updateAppointment(id) {
        window.location.href = 'adminupdatepage.jsp?id=' + id;
}
  function goBack() {
            window.history.back();
        }
</script>
