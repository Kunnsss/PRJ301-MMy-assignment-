<%@page import="model.StudentClass"%>
<%@page import="model.Student"%>
<%@page import="model.Instructor"%>
<%@page import="model.Semester"%>
<%@page import="model.Course"%>
<%@page import="model.Major"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/templates/admin/inc2/header.jsp" %>

<!-- Main Sidebar Container -->
<%@include file="/templates/admin/inc2/menu.jsp" %>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Student</h1>
                </div><!-- /.col --><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <table class="table table-bordered" id="datatable">
                <thead class="thead-CCFFFF">
                    <tr class="list-header">
                        <th scope="col">#</th>
                        <th scope="col">Student ID</th>
                        <th scope="col">Student Name</th>
                        <th scope="col">Gender</th>
                        <th scope="col">Date Of Birth</th>
                        <th scope="col">Address</th>
                        <th scope="col">Phone</th>
                        <th scope="col">Class</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    if(request.getAttribute("studentList") != null){
                            List<Student> studentList = (List<Student>) request.getAttribute("studentList");
                            if(studentList.size() > 0){
                                    for(Student objStudent : studentList){
                    %>
                    <tr class="tr-hover">
                        <th scope="row"><input type="checkbox" name="vehicle1" value="Bike"></th>
                        <td><%=objStudent.getStudentID() %></td>
                        <td><%=objStudent.getFullName() %></td>
                        <td><%=objStudent.getGender() %></td>
                        <td><%=objStudent.getDob() %></td>
                        <td><%=objStudent.getAddress() %></td>
                        <td><%=objStudent.getPhone() %></td>
                        <td><%=objStudent.getStudentClass().getClassID() %></td> 
                    </tr>
                    <%
            }
    }
}
                    %>
                </tbody>
            </table>


        </div><!-- /.container-fluid -->
    </section>
   
</div>
<!-- /.content-wrapper -->  
<%@include file="/templates/admin/inc2/footer.jsp" %>

