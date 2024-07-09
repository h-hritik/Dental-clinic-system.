<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error Page</title>
   
</head>
<body>
<center>
    <h1>Registration Failed!!</h1>
    <p>${errorMessage}</p>
    <br>
  <button onclick="window.history.back();" class="btn btn-primary">Try Again</button>
</center>
</body>
</html>
