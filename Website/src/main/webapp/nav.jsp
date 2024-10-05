<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Codemate</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    
    
</head>
<body>
<nav class="navbar navbar-expand-lg bg-white ">
        <div class="container">
          <a class="navbar-brand" href="index.jsp">
              <!--Brand Logo-->
            <img src="Graphics/logo/Codemate.png" alt="logo">
          </a>     
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
  <span class="navbar-toggler-icon"></span>
</button>

          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ms-auto">
              <a class="nav-link" aria-current="page" href="index.jsp">Home</a>
              <a class="nav-link" href="#">About us</a>
              <ul class="navbar-nav">
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Courses</a>
                  <ul class="dropdown-menu dropdown-menu-dark">
                    <li><a class="dropdown-item" href="#">DevOps</a></li>
                    <li><a class="dropdown-item" href="#">Java</a></li>
                    <li><a class="dropdown-item" href="#">Artificial Intelligence</a></li>
                    <li><a class="dropdown-item" href="#">Cloud Computing</a></li>
                    <li><a class="dropdown-item" href="#">Cyber Security</a></li>
                    <li><a class="dropdown-item" href="#">Data Science</a></li>
                    <li><a class="dropdown-item" href="#">.Net</a></li>
                    <li><a class="dropdown-item" href="#">UI/UX</a></li>
                    <li><a class="dropdown-item" href="#">Web Development</a></li>
                  </ul>
                </li>
              </ul>
        
              <a class="nav-link" href="#">Placements</a>
              
              <ul class="navbar-nav">
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Login</a>
                  <ul class="dropdown-menu dropdown-menu-dark">
                    <li><a class="dropdown-item" href="login_admin.jsp">As Admin</a></li>
                    <li><a class="dropdown-item" href="login_user.jsp">As User</a></li>       
                  </ul>
                </li>
              </ul> 
              
              <a class="nav-link" href="#">Contact Us</a>
              <button id="enrollButton" type="button" class=" nav-link btn btn-outline-warning" >Enroll Now</button>
              
           <script>
            document.getElementById("enrollButton").addEventListener("click", function() {
            window.location.href = "enroll_form.jsp";
            });
           </script>
              
              
              
            </div>  
          </div>
        </div>
      </nav>

</body>
</html>