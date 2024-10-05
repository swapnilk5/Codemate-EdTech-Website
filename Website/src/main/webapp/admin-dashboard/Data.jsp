<%@ page import="com.connection.Conn" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>

<style>
.scrollable-table-wrapper {
  width: 100%;
  overflow-x: auto;
}

.table th,
.table td {
  white-space: nowrap;
  padding: 8px; /* Adjust the padding as needed */
}

/* Fix the 'Id' column */
.table-fixed th:first-child,
.table-fixed td:first-child {
  position: sticky;
  left: 0;
  z-index: 1;
  background-color: #fff; /* Ensure the background is white for visibility */
}

/* Fix the 'Action' column */
.table-fixed th:last-child,
.table-fixed td:last-child {
  position: sticky;
  right: 0;
  z-index: 1;
  background-color: #fff; /* Ensure the background is white for visibility */
}
</style>
</head>
<body>
<%@include file="nav_admin.jsp"%>

<section>
<div class="container p-5">
<div class="row">
<div class="col-md-12">
<div class="card">
<div class="card-header text-center fs-4">Student Details</div>
<div class="card-body">
<div class="scrollable-table-wrapper">
<div class="table-responsive table-fixed"> <!-- Add the class 'table-fixed' -->
<table class="table">

<thead>
<tr>
<th scope="col">Id</th>
<th scope="col">Name</th>
<th scope="col">Email</th>
<th scope="col">Phone</th>
<th scope="col">Gender</th>
<th scope="col">State</th>
<th scope="col">Zipcode</th>
<th scope="col">Course</th>
<th scope="col">Duration</th>
<th scope="col">Fees</th>
<th scope="col">Action</th>
</tr>
</thead>
<tbody>
<%
try
{
	Connection con=Conn.getCon();
	String data="select * from enroll";
	PreparedStatement ps=con.prepareStatement(data);
	ResultSet set = ps.executeQuery();
	while(set.next())
	{
		%>
		<tr>
		<td><%=set.getString(1)%></td>
		<td><%=set.getString(2)%></td>
		<td><%=set.getString(3)%></td>
		<td><%=set.getString(4)%></td>
		<td><%=set.getString(5)%></td>
		<td><%=set.getString(6)%></td>
		<td><%=set.getString(7)%></td>
		<td><%=set.getString(8)%></td>
		<td><%=set.getString(9)%></td>
		<td><%=set.getString(10)%></td>
		<td>
		<a href="edit.jsp?id=<%=set.getString(1)%>" class="btn btn-sm btn-primary">Edit</a>
	    <a href="delete.jsp?id=<%=set.getString(1)%>" class="btn btn-sm btn-danger">Delete</a>
		</td>
	    </tr>
		
		<% 
	}
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</tbody>
</table>
</div> <!-- Close the table-responsive div -->
</div> <!-- Close the scrollable-table-wrapper div -->
</div>
</div>
</div>
</div>
</div>
</section>
</body>
</html>