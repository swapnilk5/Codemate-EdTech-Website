<%@ page import="com.connection.Conn" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String gender = request.getParameter("gender");
String state = request.getParameter("state");
String zipcode = request.getParameter("zipcode");
String course = request.getParameter("course");
String duration = "";
String fees = "";
if (course != null && !course.isEmpty()) {
    switch (course) {
        case "DevOps":
            duration = "6 Months";
            fees = "Rs.15000";
            break;
        case "Java":
            duration = "6 Months";
            fees = "Rs.20000";
            break;
        case "Artificial Intelligence":
            duration = "10 Months";
            fees = "Rs.35000";
            break;
        case "Cloud Computing":
            duration = "5 Months";
            fees = "Rs.19000";
            break;
        case "Cyber Security":
            duration = "5 Months";
            fees = "Rs.17000";
            break;
        case "Data Science":
            duration = "8 Months";
            fees = "Rs.28000";
            break;
        case ".Net":
            duration = "5 Months";
            fees = "Rs.19000";
            break;
        case "UI/UX":
            duration = "4 Months";
            fees = "Rs.18000";
            break;
        case "Web Development":
            duration = "7 Months";
            fees = "Rs.15000";
            break;
        // Add cases for other courses as needed
        default:
            // Set default values if course not found
            duration = "";
            fees = "";
            break;
    }
}
int i=0;
try{
	Connection con = Conn.getCon();
	String ins="insert into enroll(name,email,phone,gender,state,zipcode,course,duration,fees)values(?,?,?,?,?,?,?,?,?)";
	PreparedStatement ps = con.prepareStatement(ins);
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, phone);
	ps.setString(4, gender);
	ps.setString(5, state);
	ps.setString(6, zipcode);
	ps.setString(7, course);
	ps.setString(8, duration);
	ps.setString(9, fees);	
	i=ps.executeUpdate();
	if(i>0){
		response.sendRedirect("enroll_form.jsp?msg=ins");
	}
}
catch(Exception e){
	response.sendRedirect("enroll_form.jsp?msg=notins");
	e.printStackTrace();
}
%>


</body>
</html>