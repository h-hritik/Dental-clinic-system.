<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Success</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            margin-top: 50px;
            text-align: center;
        }
        h1 {
            color: #007bff;
            margin-bottom: 20px;
        }
        p {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Registration Successful</h1>
    <p>${errorMessage}</p>
    <p>Click here to login!</p>
    <a href="Loginhtml.html" class="btn btn-primary">Login</a>
</div>
</body>
</html>
