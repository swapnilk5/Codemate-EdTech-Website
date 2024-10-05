package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import Entities.Enroll;
import dao.EnrollDao;

@WebServlet("/saveData")
public class saveData extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("GET method is not supported, use POST method instead");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    	response.setContentType("text/html");

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String gender = request.getParameter("gender");
        String state = request.getParameter("state");
        String zipcode = request.getParameter("zipcode");
        String course = request.getParameter("course");
        String duration = request.getParameter("duration");
        String fees = request.getParameter("fees");

        Enroll student = new Enroll();
        student.setName(name);
        student.setEmail(email);
        student.setPhone(phone);
        student.setGender(gender);
        student.setState(state);
        student.setZipcode(zipcode);
        student.setCourse(course);
        student.setDuration(duration);
        student.setFees(fees);

        PrintWriter out = response.getWriter();
        EnrollDao studentDao = new EnrollDao();

        try {
            studentDao.insertData(student);
            out.print("Data is inserted");
            response.sendRedirect("enroll_form.jsp");
        } catch(Exception e) {
            e.printStackTrace();
            out.print("Data is not inserted");
            response.sendRedirect("enroll_form.jsp");
        }
    }
}
