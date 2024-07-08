/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.StudentClassDAO;
import dal.StudentDAO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.Major;
import model.Student;
import model.StudentClass;

/**
 *
 * @author Acer
 */
public class StudentServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet StudentServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet StudentServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("userInfor") == null) {
            response.sendRedirect(request.getContextPath() + "/auth/login");
            return;
        }

        StudentDAO studentDAO = new StudentDAO();
        List<Student> studentList = studentDAO.getAll();
        request.setAttribute("studentList", studentList);

        StudentClassDAO studentClassDAO = new StudentClassDAO();
        List<StudentClass> studentClassList = studentClassDAO.getAll();
        request.setAttribute("studentClassList", studentClassList);

        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/student.jsp");
        rd.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");

        StudentDAO studentDAO = new StudentDAO();

        String studentID = request.getParameter("studentID");
        String studentName = request.getParameter("studentName");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        int phone = 0;
        try {
            phone = Integer.parseInt(request.getParameter("phone"));
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String classID = request.getParameter("classID");
        Student objStudent = new Student(studentID, studentName, gender, dob, phone, email, address, new StudentClass(classID, new Major(null, null)));
        int add = studentDAO.addStudent(objStudent);
        if (add > 0) {
            response.sendRedirect(request.getContextPath() + "/admin/student?msg=OK");
            return;
        } else {
            response.sendRedirect(request.getContextPath() + "/admin/student?msg=ERROR");
            return;
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
