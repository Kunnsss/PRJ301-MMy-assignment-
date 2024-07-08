<%@page import="model.StudentClass"%>
<%@page import="model.Student"%>
<%@page import="model.Instructor"%>
<%@page import="model.Semester"%>
<%@page import="model.Course"%>
<%@page import="model.Major"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/templates/admin/inc/header.jsp" %>

<!-- Main Sidebar Container -->
<%@include file="/templates/admin/inc/menu.jsp" %>

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
            <%
                      if(!"".equals(request.getParameter("msg"))){
                              String msg = request.getParameter("msg");
                              if("OK".equals(msg)){
            %>
            <div class="alert alert-success" role="alert">
                Successfully..!
            </div>
            <%
    }
}
            %>
            <%
                    if(!"".equals(request.getParameter("msg"))){
                            String msg = request.getParameter("msg");
                            if("ERROR".equals(msg)){
            %>
            <div class="alert alert-danger" role="alert">
                Fail..!
            </div>
            <%
    }
}
            %>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalThem">Add</button>
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
                        <th scope="col">Feature</th>
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
                        <td>
                            <button type="button" class="btn btn-danger suaMenu" ">
                                <a href="#" onclick="confirmAndDelete('<%=request.getContextPath()%>/admin/delete?student=<%= objStudent.getStudentID() %>')">Delete</a>
                            </button>
                            <button type="button" class="btn btn-secondary suaMenu" data-toggle="modal" data-target="#modalSua" ">
                                <a href="#">Edit</a>
                            </button>
                        </td>
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
    <!-- Modal -->
    <div class="modal fade" id="modalThem" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add Student</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action ="<%=request.getContextPath()%>/admin/student" method="post">

                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">Student ID</label>
                            <input type="text" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="studentID">
                        </div>
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">Student Name</label>
                            <input type="text" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="studentName">
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-3">Gender</label>
                            <div class="col-sm-9">
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="gender" id="maleRadio" value="Male">
                                    <label class="form-check-label" for="maleRadio">Male</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="gender" id="femaleRadio" value="Female">
                                    <label class="form-check-label" for="femaleRadio">Female</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">Date of birth</label>
                            <input type="date" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="dob">
                        </div>
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">Address</label>
                            <input type="text" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="address">
                        </div>
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">Phone</label>
                            <input type="text" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="phone">
                        </div>
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">Email</label>
                            <input type="text" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="email">
                        </div>
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">Major</label>
                            <%
                            if(request.getAttribute("studentClassList") != null){
                                List<StudentClass> studentClassList = (List<StudentClass>)request.getAttribute("studentClassList");
                                if(studentClassList.size() > 0){
                            %>
                            <select class="form-control" id="exampleFormControlSelect1" name="classID">
                                <%
                                   for(StudentClass objStudentClass : studentClassList){
                                %>
                                <option value="<%=objStudentClass.getClassID()%>"><%=objStudentClass.getClassID() %></option>
                                <%
                        }
                                %>
                            </select>
                            <%
                    }
                }
                            %>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Exit</button>
                            <button type="submit" class="btn btn-primary">Add</button>
                        </div>        
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="modalSua" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    
                    
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
//    $(document).ready(function(){
//    $("form").submit(function(event){
//    event.preventDefault();
//            var formData = new FormData(this);
//            $.ajax({
//            url:"input",
//                    type: "post",
//                    data: formData,
//                    success: function(data){
//                    var row = data;
//                            for (i = 0; i < row.length; i++){
//                    var column = row[i];
//                            var eachrow = "<tr>";
//                            for (j = 0; j < column.lenght; j++){
//                    eachrow = eachrow + "<td>" + column[j] + "</td>";
//                    }
//                    eachrow = eachrow + "</td>";
//                            $('#tbody').append(eachrow);
//                    }
//                    },
//                    cache:false,
//                    contentType: false,
//                    processData: false
//            })
//    })
//    }
    function confirmAndDelete(deleteUrl) {
        // Display a confirmation dialog
        var confirmed = confirm("Are you sure you want to delete this?");

        // If the user confirms, proceed with the delete action
        if (confirmed) {
            // Redirect to the delete URL
            window.location.href = deleteUrl;
        }
    }
</script>

<!-- /.content-wrapper -->
<%@include file="/templates/admin/inc/footer.jsp" %>

