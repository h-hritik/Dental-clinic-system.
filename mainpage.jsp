<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Maurya Dental Clinic</title>
    <link rel="stylesheet" href="MainPagecss.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
   
</head>

<body>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="abouthtml.html">Maurya Dental Clinic</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="specialisedhtml.html">Specialities</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Appointmenthtml.html">Appointments</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="patientdetailhtml.html">Patients</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Payamentsystemhtml.html">Billing</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contacthtml.html">Contacts</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="feedbackhtml.html">Feedback</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="abouthtml.html">About</a>
                </li>
            </ul>
            
            <button class="btn btn-outline-light my-2 my-sm-0" type="button">
                <a href="logoutpage.html" class="text-light" style="text-decoration: none;">Logout</a>
            </button>
        </div>
    </nav>

    <!-- Side Navigation Menu -->
    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <a href="imagehtml.html">Image</a>
        

        <a href="map.html">Location</a>
        <a href="contacthtml.html">Contact</a>
    </div>
    <span class="openbtn" onclick="openNav()">&#9776;</span>
<center><p style="color: red;"><b>Hello ${username}</b></p></center>
    <!-- Page Content -->
    <header class="text-center mt-5">
               

        <h1>Welcome to Maurya Dental Clinic</h1>
        <p class="lead">Where Your Smile Matters</p>
    </header>

    
              

 
    <div class="container mt-3">
        <div class="row">
            <div class="col text-center">
                <div class="marquee">
                    <marquee>     <p><strong>Welcome to our clinic!</strong> - Providing quality dental care since 2005</p></marquee>
                </div>
            </div>
        </div>
    </div>
    

  
   <main>

        <div class="appointment-list">
            <h3>Upcoming Appointments</h3>
            <p>Click the below button to view the up coming appointments</p>
           <button onclick="openPopup()">Upcoming Appointments</button>
        </div>
                              
    </main>
     <script>
        function openPopup() {
            var popup = window.open("upcommingAppointments.jsp", "Upcoming Appointments", "width=600,height=400");
        }
    </script>
     
    
        

        <center> <p> Book your appointment now!</p>
            <a href="Appointmenthtml.html" class="btn btn-lg appointment-btn">Book Appointment</a></center>

             

<!-- Bootstrap JS and jQuery (optional, for dropdowns, toggles, etc.) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


    <!-- Dentists Container -->
    <section class="container mt-5">
        <h2 class="text-center mb-4">Meet Our Dentists</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <a href="drinfo.html"> <img src="image/dr1.jpg" class="card-img-top" alt="Dentist 1"></a>
                    <div class="card-body">
                        <h5 class="card-title">Dr. [Name]</h5>
                        <p class="card-text">Qualifications: [Bachelor of Dental Surgery]</p>
                        <p class="card-text">Specialization: [Surgery]</p>
                        <p class="card-text">Experience: [2 years]</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <a href="drinfo2.html"><img src="image/dr2.jpg" class="card-img-top" alt="Dentist 2"></a>
                    <div class="card-body">
                        <h5 class="card-title">Dr. [Name]</h5>
                        <p class="card-text">Qualifications: [Bachelor of Dental Surgery]</p>
                        <p class="card-text">Specialization: [Surgery]</p>
                        <p class="card-text">Experience: [3 years]</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <a href="drinfo3.html">        <img src="image/dr3.jpg" class="card-img-top" alt="Dentist 3"></a>
                    <div class="card-body">
                        <h5 class="card-title">Dr. [Name]</h5>
                        <p class="card-text">Qualifications: [Bachelor of Dental Surgery]</p>
                        <p class="card-text">Specialization: [Surgery]</p>
                        <p class="card-text">Experience: [4 years]</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
<div id="imageSlider">
        <img src="image/bg14.jpg" alt="Image 1" width="25%" height="20%">
    </div>

    <script>
        // Array of image URLs
        var images = ["image/bg14.jpg", "image/img1.2.jpg", "image/img2.jpg"];
        var currentIndex = 0;

        // Function to change the image every 3 seconds
        function changeImage() {
            // Get the image element
            var image = document.querySelector("#imageSlider img");

            // Change the source of the image
            image.src = images[currentIndex];

            // Increment the index for the next image
            currentIndex++;

            // Reset the index if it exceeds the array length
            if (currentIndex >= images.length) {
                currentIndex = 0;
            }
        }

        // Set an interval to call the changeImage function every 3 seconds
        setInterval(changeImage, 3000);
    </script>
    <!-- Dental Clinic Statistics -->
   
        <br><br>
        <!-- Blog Section -->
<section class="container mt-5">
    <h2 class="text-center mb-4">Latest Blogs</h2>
    <div class="row">
        <div class="col-md-6">
            <div class="card mb-4">
                <img src="image/bg16.jpg" class="card-img-top" alt="Blog 1">
                <div class="card-body">
                    <h5 class="card-title">10 Tips for Better Oral Hygiene</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae justo nec mi fermentum ultricies. Duis auctor enim sed...</p>
                    <a href="blog1.html" class="btn btn-primary">Read More</a>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card mb-4">
                <img src="image/bg21.jpeg" class="card-img-top" alt="Blog 2">
                <div class="card-body">
                    <h5 class="card-title">The Importance of Regular Dental Check-ups</h5>
                    <p class="card-text">Praesent vitae dolor justo. Aliquam erat volutpat. Integer quis aliquam lorem, nec tincidunt est...</p>
                    <a href="blog2.html" class="btn btn-primary">Read More</a>
                </div>
            </div>
        </div>
    </div>
</section>
    
      
        </div>
    </section>

   
</main>


    <footer class="bg-dark text-white mt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h4>Contact Us</h4>
                    <p>123 Dental Street<br>Cityville, State 12345<br>Email: info@dentalclinic.com<br>Phone: +1 (555) 123-4567</p>
                </div>
                <div class="col-md-4">
                    <h4>Opening Hours</h4>
                    <p>Mon - Fri: 8:00 AM - 5:00 PM<br>Sat: 9:00 AM - 1:00 PM<br>Sun: Closed</p>
                </div>
                <div class="col-md-4">
                    <h4>Follow Us</h4>
                    <p>
                        <a href="#" class="social-icon"><i class="fa fa-twitter"></i></a>
                        <a href="#" class="social-icon"><i class="fa fa-instagram"></i></a>
                        <a href="#" class="social-icon"><i class="fa fa-facebook"></i></a>
                        <a href="#" class="social-icon"><i class="fa fa-linkedin"></i></a>
                    </p>
                </div>
            </div>
        </div>
        
    </footer>

    <!-- JavaScript for Side Navigation Menu -->
    <script>
        function openNav() {
            document.getElementById("mySidenav").style.width = "250px";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
        }
    </script>

    <!-- Add Bootstrap JavaScript -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
