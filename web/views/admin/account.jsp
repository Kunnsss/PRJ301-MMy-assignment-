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
                    <h1 class="m-0">Account</h1>
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
                        <th scope="col">Account</th>
                        <th scope="col">Email</th>      
                        <th scope="col">Feature</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    if(request.getAttribute("accountList") != null){
                            List<Account> accountList = (List<Account>) request.getAttribute("accountList");
                            if(accountList.size() > 0){
                                    for(Account objAccount : accountList){
                    %>
                    <tr class="tr-hover">
                        <th scope="row"><input type="checkbox" name="vehicle1" value="Bike"></th>
                        <td><%=objAccount.getUsername() %></td>
                        <td><%=objAccount.getEmail() %></td>
                        <td><%=objAccount.getRole().getRoleName() %></td>
                        <td> 
                            <button type="button" class="btn btn-danger suaMenu" ">
                                <a href="#" onclick="confirmAndDelete('<%=request.getContextPath()%>/admin/delete?account=<%= objAccount.getUsername() %>')">Delete</a>
                            </button>
                            <%
                                 Account userInfor = (Account)session.getAttribute("userInfor");
                                if (userInfor != null && userInfor.getRole().getRoleID() == 1) {
                            %>
                            <button type="button" class="btn btn-secondary suaMenu" data-toggle="modal" data-target="#modalSua">
                                <a href="#">Edit</a>
                            </button>
                            <%
                                }
                            %>
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
                    <h5 class="modal-title" id="exampleModalLabel">Account</h5>
                   
                </div>
                <div class="modal-body">
                    <form action ="<%=request.getContextPath()%>/admin/account" method="post">
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">User Name</label>
                            <input type="text" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="username">
                        </div>
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">Password</label>
                            <input type="password" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="password">
                        </div>
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">Email</label>
                            <input type="text" class="form-control-file col-sm-8" id="exampleFormControlFile1" name="email">
                        </div>
                        <div class="form-group row">
                            <label for="exampleFormControlFile1" class="col-sm-3">Role</label>
                            <%
                            if(request.getAttribute("roleList") != null){
                                List<Role> roleList = (List<Role>)request.getAttribute("roleList");
                                if(roleList.size() > 0){
                            %>
                            <select class="form-control" id="exampleFormControlSelect1" name="roleID">
                                <%
                                   for(Role objRole : roleList){
                                %>
                                <option value="<%=objRole.getRoleID()%>"><%=objRole.getRoleName() %></option>
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
</div>
<div class="modal fade" id="modalSua" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                
                
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

