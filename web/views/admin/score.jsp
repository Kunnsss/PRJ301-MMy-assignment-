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
                    <h1 class="m-0">Mark</h1>
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
                        <th scope="col">Feature</th>
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
                        <td>
                            <button type="button" class="btn btn-danger suaMenu" ">
                                <a href="#" onclick="confirmAndDelete('<%=request.getContextPath()%>/admin/delete?mark=<%= objMark.getMarkID() %>')">Delete</a>
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
                    <h5 class="modal-title" id="exampleModalLabel">Input Mark</h5>
                    
                </div>
                <div class="modal-body">
                    <form action ="<%=request.getContextPath()%>/admin/mark" method="post">

                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">Mark ID</label>
                            <input type="text" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="markID">
                        </div>
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">Student ID</label>
                            <%
                            if(request.getAttribute("studentList") != null){
                                List<Student> studentList = (List<Student>)request.getAttribute("studentList");
                                if(studentList.size() > 0){
                            %>
                            <select class="form-control" id="exampleFormControlSelect1" name="studentID">
                                <%
                                   for(Student objStudent : studentList){
                                %>
                                <option value="<%=objStudent.getStudentID()%>"><%=objStudent.getStudentID() %></option>
                                <%
                        }
                                %>
                            </select>
                            <%
                    }
                }
                            %>
                        </div>
                        <!--                        <div class="form-group row">
                                                    <label for="exampleFormControlFile1" class="col-sm-3">Student Name</label>
                                                    <input type="text" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="studentName">
                                                </div>-->
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">Assignment</label>
                            <input type="text" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="assignment">
                        </div>
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">PT1</label>
                            <input type="text" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="pt1">
                        </div>
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">PT2</label>
                            <input type="text" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="pt2">
                        </div>
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">FE</label>
                            <input type="text" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="fe">
                        </div>
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">Average</label>
                            <input type="text" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="average">
                        </div>
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">Instructor</label>
                            <%
                            if(request.getAttribute("instructorList") != null){
                                List<Instructor> instructorList = (List<Instructor>)request.getAttribute("instructorList");
                                if(instructorList.size() > 0){
                            %>
                            <select class="form-control" id="exampleFormControlSelect1" name="instructorID">
                                <%
                                   for(Instructor objInstructor : instructorList){
                                %>
                                <option value="<%=objInstructor.getInstructorID()%>"><%=objInstructor.getInstructorName() %></option>
                                <%
                        }
                                %>
                            </select>
                            <%
                    }
                }
                            %>
                        </div>
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">Course</label>
                            <%
                            if(request.getAttribute("courseList") != null){
                                List<Course> courseList = (List<Course>)request.getAttribute("courseList");
                                if(courseList.size() > 0){
                            %>
                            <select class="form-control" id="exampleFormControlSelect1" name="courseID">
                                <%
                                   for(Course objCourse : courseList){
                                %>
                                <option value="<%=objCourse.getCourseID()%>"><%=objCourse.getCourseID() %></option>
                                <%
                        }
                                %>
                            </select>
                            <%
                    }
                }
                            %>
                        </div>
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">Class</label>
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
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">Semester</label>
                            <%
                           if(request.getAttribute("semesterList") != null){
                               List<Semester> semesterList = (List<Semester>)request.getAttribute("semesterList");
                               if(semesterList.size() > 0){
                            %>
                            <select class="form-control" id="exampleFormControlSelect1" name="semesterID">
                                <%
                                   for(Semester objSemester : semesterList){
                                %>
                                <option value="<%=objSemester.getSemesterID()%>"><%=objSemester.getSemesterID() %></option>
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

