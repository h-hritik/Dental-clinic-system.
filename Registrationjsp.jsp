<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration JSP</title>
    <script>
        function validateForm() {
            var pass1 = document.getElementById("txtPass1").value;
            var pass2 = document.getElementById("txtPass2").value;
            if (pass1 !== pass2) {
                alert("Password mismatch! Please enter the same password in both fields.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>

<h1>Registration Page</h1>
<%
String uname = request.getParameter("txtName");
String pass1 = request.getParameter("txtPass1");
String pass2 = request.getParameter("txtPass2");
String email = request.getParameter("txtEmail");

if ( pass1.equals(pass2)) {
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hritik2", "root", "root");
        PreparedStatement pstm = con.prepareStatement("INSERT INTO maurya (uname, email, pass1) VALUES (?, ?, ?)");
        pstm.setString(1, uname);
        pstm.setString(2, email);
        pstm.setString(3, pass1);

        int row = pstm.executeUpdate();
        if (row > 0) {
           
            request.getRequestDispatcher("registersuccessful.jsp").include(request, response);
        } else {
            out.println("<p>Registration Failed!</p>");
            request.getRequestDispatcher("failed.jsp").include(request, response);
        }
    } catch (Exception e) {
        out.println("<p>Error: " + e.getMessage() + "</p>");
    }
} else {
    out.println("<h1>Password Mismatch</h1>");
    request.getRequestDispatcher("error.jsp").include(request, response);
}
%>
</body>
</html>
