<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
<%@ page import="javax.servlet.RequestDispatcher" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login JSP</title>
</head>

<%
    String uname = request.getParameter("txtName");
    String pass = request.getParameter("txtPass");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/UserDetails", "root", "root");
        
        // Check if the user is an admin
        if ("admin".equals(uname) && "admin123".equals(pass)) {
            // Admin login successful
            // Set the username as a request attribute to pass to the next page
            System.out.println("Admin login");
            request.setAttribute("username", uname);
            
            // Redirect to the admin page
            response.sendRedirect("adminmainpage.jsp");
        } else {
            // Check if the user is a regular user
            System.out.println("user login");
            PreparedStatement stmt = con.prepareStatement("select password from RegistrationDetails where name=?");
            stmt.setString(1, uname);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                if (pass.equals(rs.getString(1))) {
                    // Regular user login successful
                    // Set the username as a request attribute to pass to the next page
                    request.setAttribute("username", uname);
                    
                    // Redirect to the main page
                    RequestDispatcher rd = request.getRequestDispatcher("mainpage.jsp");
                    rd.forward(request, response);
                } else {
                    // Login failed, redirect back to the login page
                    System.out.println("Login failed");
                    RequestDispatcher rd = request.getRequestDispatcher("loginfail.jsp");
                    rd.include(request, response);
                }
            } else {
                // User not found, redirect back to the login page
                System.out.println("User not found");
                RequestDispatcher rd = request.getRequestDispatcher("loginfail.jsp");
                rd.include(request, response);
            }
        }
    } catch (Exception e) {
        out.println(e);
    }
%>
</html>
