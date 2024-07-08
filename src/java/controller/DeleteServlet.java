/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AccountDAO;
import dal.CourseDAO;
import dal.InstructorDAO;
import dal.MajorDAO;
import dal.MarkDAO;
import dal.RoleDAO;
import dal.SemesterDAO;
import dal.StudentClassDAO;
import dal.StudentDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Acer
 */
public class DeleteServlet extends HttpServlet {

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
            out.println("<title>Servlet DeleteServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DeleteServlet at " + request.getContextPath() + "</h1>");
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
        String account = request.getParameter("account");
        String student = request.getParameter("student");
        String course = request.getParameter("course");
        String instructor = request.getParameter("instructor");
        String major = request.getParameter("major");
        String mark_raw = request.getParameter("mark");
        String semester = request.getParameter("semester");
        String role = request.getParameter("role");
        String classStudent = request.getParameter("class");
        if (account != null) {
            AccountDAO accountDAO = new AccountDAO();
            accountDAO.deleteAccount(account);
            response.sendRedirect(request.getContextPath() + "/admin/account");
        }
        if (student != null) {
            StudentDAO studentDAO = new StudentDAO();
            studentDAO.deleteStudent(student);
            response.sendRedirect(request.getContextPath() + "/admin/student");
        }
        if (course != null) {
            CourseDAO courseDAO = new CourseDAO();
            courseDAO.deleteCourse(course);
            response.sendRedirect(request.getContextPath() + "/admin/course");
        }
        if (instructor != null) {
            InstructorDAO instructorDAO = new InstructorDAO();
            instructorDAO.deleteInstructor(instructor);
            response.sendRedirect(request.getContextPath() + "/admin/instructor");
        }
        if (major != null) {
            MajorDAO majorDAO = new MajorDAO();
            majorDAO.deleteMajor(major);
            response.sendRedirect(request.getContextPath() + "/admin/major");
        }
        if (mark_raw != null) {
            int mark =Integer.parseInt(mark_raw);
            MarkDAO markDAO = new MarkDAO();
            markDAO.deleteMark(mark);
            response.sendRedirect(request.getContextPath() + "/admin/mark");
        }
        if (semester != null) {
            SemesterDAO semesterDAO = new SemesterDAO();
            semesterDAO.deleteSemester(semester);
            response.sendRedirect(request.getContextPath() + "/admin/semester");
        }
        if (role != null) {
            RoleDAO roleDAO = new RoleDAO();
            roleDAO.deleteRole(role);
            response.sendRedirect(request.getContextPath() + "/admin/role");
        }
        if (classStudent != null) {
            StudentClassDAO studentClassDAO = new StudentClassDAO();
            studentClassDAO.deleteClass(classStudent);
            response.sendRedirect(request.getContextPath() + "/admin/class");
        }
        
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
        processRequest(request, response);
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
