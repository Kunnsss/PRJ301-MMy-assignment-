<%@page import="model.StudentClass"%>
<%@page import="model.Student"%>
<%@page import="model.Instructor"%>
<%@page import="model.Semester"%>
<%@page import="model.Course"%>
<%@page import="model.Major"%>
<%@page import="model.Role"%>
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
                    <h1 class="m-0">Instructor</h1>
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
                        <th scope="col">Instructor ID</th>
                        <th scope="col">Instructor Name</th>
                        <th scope="col">Phone</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    if(request.getAttribute("instructorList") != null){
                            List<Instructor> instructorList = (List<Instructor>) request.getAttribute("instructorList");
                            if(instructorList.size() > 0){
                                    for(Instructor objInstructor : instructorList){
                    %>
                    <tr class="tr-hover">
                        <th scope="row"><input type="checkbox" name="vehicle1" value="Bike"></th>
                        <td><%=objInstructor.getInstructorID() %></td>
                        <td><%=objInstructor.getInstructorName() %></td>
                        <td><%=objInstructor.getInstructorPhone() %></td>
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
    <!-- /.content -->
</div>
<%@include file="/templates/admin/inc2/footer.jsp" %>

