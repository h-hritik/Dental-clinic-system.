<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Appointment</title>
    <!-- Include Bootstrap for styling -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
     <link rel="stylesheet" href="appointmentcss.css">
</head>
<body>
    <div class="container mt-5">
        <h2>Update Appointment</h2>
        <form method="post" action="EditAppointmentjsp.jsp">
            <%-- Get the appointment ID from the request --%>
            <% String appointmentId = request.getParameter("id"); %>
            <%-- Retrieve appointment details from the database using ID --%>
            <% Connection con = null; PreparedStatement pstmt = null; ResultSet rs = null; %>
            <% try { %>
                <% Class.forName("com.mysql.jdbc.Driver"); %>
                <% con = DriverManager.getConnection("jdbc:mysql://localhost:3306/appointment2", "root", "root"); %>
                <% pstmt = con.prepareStatement("SELECT * FROM appointments WHERE id = ?"); %>
                <% pstmt.setString(1, appointmentId); %>
                <% rs = pstmt.executeQuery(); %>
                <% if (rs.next()) { %>
                    <%-- Display appointment details in form fields --%>
                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input type="text" class="form-control" id="name" name="name" value="<%= rs.getString("name") %>" readonly>
                    </div>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" name="email" value="<%= rs.getString("email") %>" readonly>
                    </div>
                    <div class="form-group">
                        <label for="date">Date:</label>
                        <input type="date" class="form-control" id="date" name="date" value="<%= rs.getString("date") %>" required>
                    </div>
                    <div class="form-group">
                        <label for="time">Time:</label>
                        <input type="time" class="form-control" id="time" name="time" value="<%= rs.getString("time") %>" required>
                    </div>
                    <input type="hidden" name="id" value="<%= appointmentId %>">
                    <button type="submit" class="btn btn-primary">Update</button>
                <% } else { %>
                    <div class="alert alert-danger" role="alert">Appointment not found.</div>
                <% } %>
            <% } catch (Exception e) { %>
                <div class="alert alert-danger" role="alert">Error: <%= e.getMessage() %></div>
            <% } finally { %>
                <%-- Close resources --%>
                <% try { if (rs != null) rs.close(); } catch (Exception e) { } %>
                <% try { if (pstmt != null) pstmt.close(); } catch (Exception e) { } %>
                <% try { if (con != null) con.close(); } catch (Exception e) { } %>
            <% } %>
        </form>
    </div>
</body>
</html>
