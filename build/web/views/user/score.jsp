<%@page import="model.StudentClass"%>
<%@page import="model.Student"%>
<%@page import="model.Instructor"%>
<%@page import="model.Semester"%>
<%@page import="model.Course"%>
<%@page import="model.Major"%>
<%@page import="model.Mark"%>
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
                        <th scope="col">Mark ID</th>
                        <th scope="col">Student ID</th>
                        <th scope="col">Student Name</th>
                        <th scope="col">Assignment</th>
                        <th scope="col">PT1</th>
                        <th scope="col">PT2</th>
                        <th scope="col">FE</th>
                        <th scope="col">Average</th>
                        <th scope="col">Instructor</th>
                        <th scope="col">Course</th>
                        <th scope="col">Semester</th>
                        <th scope="col">Class</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    if(request.getAttribute("markList") != null){
                            List<Mark> markList = (List<Mark>) request.getAttribute("markList");
                            if(markList.size() > 0){
                                    for(Mark objMark : markList){
                    %>
                    <tr class="tr-hover">
                        <th scope="row"><input type="checkbox" name="vehicle1" value="Bike"></th>
                        <td><%=objMark.getMarkID() %></td>
                        <td><%=objMark.getStudent().getStudentID() %></td>
                        <td><%=objMark.getStudent().getFullName() %></td>
                        <td><%=objMark.getAssigment() %></td>
                        <td><%=objMark.getPt1() %></td>
                        <td><%=objMark.getPt2() %></td>
                        <td><%=objMark.getFe() %></td>
                        <td><%=  String.format("%.1f",objMark.getAverage()) %></td>
                        <td><%=objMark.getInstructor().getInstructorName() %></td>
                        <td><%=objMark.getCourse().getCourseID() %></td>
                        <td><%=objMark.getSemester().getSemesterID() %></td>
                        <td><%=objMark.getStudentclass().getClassID() %></td>
                    </tr>
                    <%
            }
    }
}
                    %>
                </tbody>
            </table>


        </div>
    </section>
</div>
<%@include file="/templates/admin/inc2/footer.jsp" %>

