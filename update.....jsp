<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Appointment</title>
    <!-- Include Bootstrap for styling -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2>Update Appointment</h2>
        <form action="UpdateAppointmentServlet" method="post">
            <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
            <div class="form-group">
                <label for="newDate">New Date:</label>
                <input type="text" class="form-control" id="newDate" name="newDate" required>
            </div>
            <div class="form-group">
                <label for="newTime">New Time:</label>
                <input type="text" class="form-control" id="newTime" name="newTime" required>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
            <a href="admin/AdminView.jsp" class="btn btn-secondary">Cancel</a>
        </form>
    </div>
</body>
</html>
