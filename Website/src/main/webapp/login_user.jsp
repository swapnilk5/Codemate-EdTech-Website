<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Codemate</title>
<link rel="stylesheet" type="text/css" href="style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
</head>
<body>
<%@include file="nav.jsp"%>
<section class="login">
<div class="container">
<div class="row mt-4 justify-content-center ">
<div class="col-md-6">
<div class="card col-12 ">
<div class="card-header text-center col-12">
<p class="fs-4 mb-0">User Login</p>
</div>
<div class="card-body">
<form>

<div class="mb-3">
<label for="inputName" class="form-label">Username:</label>
<input type="text" name="name" class="form-control" placeholder="Enter Username" id="inputName">
</div>

<div class="mb-3">
<label for="inputPassword" class="form-label">Password:</label>
<input type="password" name="password" class="form-control" placeholder="Enter Password" id="inputPassword">
</div>

<button type="submit" class="btn btn-primary">Log In</button>

</form>
</div>
</div>
</div>
</div>
</div>
</section>
</body>
</html>