<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
</head>
<body>
 <section class="placement">
      <div class="container">
        <div class="row">
          <h2>Our Learners Work At</h2>
          <p>Codemate learners work at some of the leading and innovative
             organizations of today, solving core business problems.</p>
        </div>
      </div>
    
     <div class="company">
      <div class="container">
          <section class="customer-logos slider">
              <div class="slide"><img src="Graphics/slider/adidas.png" alt="logo"></div>
              <div class="slide"><img src="Graphics/slider/facebook.png" alt="logo"></div>
              <div class="slide"><img src="Graphics/slider/google.png" alt="logo"></div>
              <div class="slide"><img src="Graphics/slider/instagram.png" alt="logo"></div>
              <div class="slide"><img src="Graphics/slider/nike.png" alt="logo"></div>
              <div class="slide"><img src="Graphics/slider/twitter.png" alt="logo"></div>
              <div class="slide"><img src="Graphics/slider/uber.png" alt="logo"></div>
              <div class="slide"><img src="Graphics/slider/youtube.png" alt="logo"></div>
          </section>
      </div>    
      <script>
      
      $(document).ready(function(){
          $('.customer-logos').slick({
              slidesToShow: 6,
              slidesToScroll: 1,
              autoplay: true,
              autoplaySpeed: 1500,
              arrows: false,
              dots: false,
              pauseOnHover:true,
              responsive: [{
                  breakpoint: 768,
                  setting: {
                      slidesToShow:4
                  }
              }, {
                  breakpoint: 520,
                  setting: {
                      slidesToShow: 3
                  }
              }]
          });
      });
  
      </script>
      </div>
    </section>

</body>
</html>