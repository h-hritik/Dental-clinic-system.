<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Clinic Statistics</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
  <div class="container mt-5">
    <h2>Add Clinic Statistics</h2>
    <form action="AddStatistics.jsp" method="post">
      <div class="form-group">
        <label for="treatments">Number of Treatments Done:</label>
        <input type="number" class="form-control" id="treatments" name="treatments" required>
      </div>
      <div class="form-group">
        <label for="patients">Number of Patients:</label>
        <input type="number" class="form-control" id="patients" name="patients" required>
      </div>
      <div class="form-group">
        <label for="implants">Number of Dental Implants:</label>
        <input type="number" class="form-control" id="implants" name="implants" required>
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
  </div>
</body>
</html>
