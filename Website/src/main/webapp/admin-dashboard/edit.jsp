<%@ page import="com.connection.Conn" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Enroll Form</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    
</head>
<body>
<%
String id = request.getParameter("id");
int i=0;
try{
	Connection con = Conn.getCon();
	String ds = "select * from the enroll where id="+id;
	
}
catch(Exception e){
	e.printStackTrace();
}
%>
<%@include file="nav_admin.jsp"%>

<section>
<div class="container">
<div class="row mt-4 mb-4">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-header text-center">
<p class="fs-4">Updation Form</p>
<%
String msg=request.getParameter("msg");
if("ins".equals(msg))
{
	%>
	<h2>Updation Successful</h2>
	<%
}
String msg1=request.getParameter("msg");
if("notins".equals(msg))
{
	%>
	<h2>Updation Failed!</h2>
	<%
}
%>
</div>
<div class="card-body">
<form action="../saveData.jsp" method="post">


<div class="row">
<div class="col-md-6">
<div class="mb-3">
<label for="inputName" class="form-label">Full Name:</label>
<input type="text" name="name" class="form-control" placeholder="Enter Full Name" id="inputName" required>
</div>
</div>
<div class="col-md-6">
<div class="mb-3">
<label for="inputEmail" class="form-label">Email:</label>
<input type="email" name="email" class="form-control" placeholder="Enter Email" id="inputEmail" required>
</div>
</div>
</div>


<div class="row">
<div class="col-md-6">
<div class="mb-3">
<label for="inputPhone" class="form-label">Phone:</label>
<input type="text" name="phone" class="form-control" placeholder="Enter Phone" id="inpuPhone" required>
</div>
</div>
<div class="col-md-6">
  <div class="mb-3">
    <label for="inputGender" class="form-label">Gender:</label>
    <select name="gender" class="form-control custom-select">
      <option value="" selected disabled>Select Gender</option>
      <option>Male</option>
      <option>Female</option>
    </select>
  </div>
</div>
</div>


<div class="row">
<div class="col-md-6">
  <div class="mb-3">
    <label for="inputState" class="form-label">State:</label>
    <select name="state" class="form-control custom-select" required>
      <option value="" selected disabled>Select State</option>
      <option value="Andhra Pradesh">Andhra Pradesh</option>
  <option value="Arunachal Pradesh">Arunachal Pradesh</option>
  <option value="Assam">Assam</option>
  <option value="Bihar">Bihar</option>
  <option value="Chhattisgarh">Chhattisgarh</option>
  <option value="Goa">Goa</option>
  <option value="Gujarat">Gujarat</option>
  <option value="Haryana">Haryana</option>
  <option value="Himachal Pradesh">Himachal Pradesh</option>
  <option value="Jharkhand">Jharkhand</option>
  <option value="Karnataka">Karnataka</option>
  <option value="Kerala">Kerala</option>
  <option value="Madhya Pradesh">Madhya Pradesh</option>
  <option value="Maharashtra">Maharashtra</option>
  <option value="Manipur">Manipur</option>
  <option value="Meghalaya">Meghalaya</option>
  <option value="Mizoram">Mizoram</option>
  <option value="Nagaland">Nagaland</option>
  <option value="Odisha">Odisha</option>
  <option value="Punjab">Punjab</option>
  <option value="Rajasthan">Rajasthan</option>
  <option value="Sikkim">Sikkim</option>
  <option value="Tamil Nadu">Tamil Nadu</option>
  <option value="Telangana">Telangana</option>
  <option value="Tripura">Tripura</option>
  <option value="Uttar Pradesh">Uttar Pradesh</option>
  <option value="Uttarakhand">Uttarakhand</option>
  <option value="West Bengal">West Bengal</option>
  <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
  <option value="Chandigarh">Chandigarh</option>
  <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
  <option value="Daman and Diu">Daman and Diu</option>
  <option value="Delhi">Delhi</option>
  <option value="Lakshadweep">Lakshadweep</option>
  <option value="Puducherry">Puducherry</option>
    </select>
  </div>
</div>
<div class="col-md-6">
<div class="mb-3">
<label for="inputZipCode" class="form-label">Zip Code:</label>
<input type="text" name="zipcode" class="form-control" placeholder="Enter Zip Code" id="inputZipCode" required>
</div>
</div>
</div>

<div class="row">
  <div class="mb-3">
    <label for="inputCourse" class="form-label">Course:</label>
    <select name="course" class="form-control custom-select" required>
      <option value="" selected disabled>Select Course</option>
      <option>DevOps</option>
      <option>Java</option>
      <option>Artificial Intelligence</option>
      <option>Cloud Computing</option>
      <option>Cyber Security</option>
      <option>Data Science</option>
      <option>.Net</option>
      <option>UI/UX</option>
      <option>Web Development</option>                
    </select>
  </div>
</div>

<div class="row">
<div class="col-md-6">
<div class="mb-3">
<label for="inputDuration" class="form-label">Duration:</label>
<input type="text" name="duration" class="form-control" placeholder="Duration" id="inputDuration">
</div>
</div>
<div class="col-md-6">
<div class="mb-3">
<label for="inputFees" class="form-label">Fees:</label>
<input type="text" name="fees" class="form-control" placeholder="Fees" id="inputFees">
</div>
</div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
  var courseSelect = document.getElementsByName('course')[0];
  var durationInput = document.getElementById('inputDuration');
  var feesInput = document.getElementById('inputFees');

  // Define a mapping of courses to their fees and durations
  var courseInfo = {
    'DevOps': { duration: '6 Months', fees: 'Rs.15000' },
    'Java': { duration: '6 Months', fees: 'Rs.20000' },
    'Artificial Intelligence': { duration: '10 Months', fees: 'Rs.35000' },
    'Cloud Computing': { duration: '5 Months', fees: 'Rs.19000' },
    'Cyber Security': { duration: '5 Months', fees: 'Rs.17000' },
    'Data Science': { duration: '8 Months', fees: 'Rs.28000' },
    '.Net': { duration: '5 Months', fees: 'Rs.19000' },
    'UI/UX': { duration: '4 Months', fees: 'Rs.18000' },
    'Web Development': { duration: '7 Months', fees: 'Rs.15000' }
  };

  courseSelect.addEventListener('change', function() {
    var selectedCourse = courseSelect.value;
    if (selectedCourse in courseInfo) {
      durationInput.value = courseInfo[selectedCourse].duration;
      feesInput.value = courseInfo[selectedCourse].fees;
      durationInput.disabled = true;
      feesInput.disabled = true;
    } else {
      durationInput.value = '';
      feesInput.value = '';
      durationInput.disabled = true;
      feesInput.disabled = true;
    }
  });
});
</script>

<button type="submit" class="btn btn-primary">Save Changes</button>

</form>
</div>
</div>
</div>
</div>
</div>
</section>
</body>
</html>