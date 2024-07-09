<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="FeedbackCSS.css">
</head>
<body>
    <div class="patient-details-container">
        <h2>Feedback page</h2>
        <%  
            // Retrieve form parameters
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String feedback = request.getParameter("feedback");
  
            try {
                // Load the MySQL JDBC driver
                Class.forName("com.mysql.jdbc.Driver");

                // Establish the database connection
                Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback", "root", "root");
                PreparedStatement pstmt = con.prepareStatement("INSERT INTO feedback(name, email,feedback) VALUES ( ?, ?, ?)");

                // Set parameter values for the prepared statement
                pstmt.setString(1, name);
                pstmt.setString(2, email);
                pstmt.setString(3, feedback);

                // Execute the SQL query to insert patient details
                pstmt.executeUpdate();   
                pstmt.close();
                con.close(); 
                out.println("Feeback send successfully");
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        <button class="btn btn-secondary mt-3" onclick="goToMainPage()">Back</button>
    </div>

    <script>
        function goToMainPage() {
            window.location.href = "mainpage.jsp";
        }
    </script>
</body>
</html>
