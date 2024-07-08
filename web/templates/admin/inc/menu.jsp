<%@page import="model.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
       
   
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
      
        <!--       SidebarSearch Form 
               <div class="form-inline">
                <div class="input-group" data-widget="sidebar-search">
                  <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                  <div class="input-group-append">
                    <button class="btn btn-sidebar">
                      <i class="fas fa-search fa-fw"></i>
                    </button>
                  </div>
                </div>
              </div> 
               Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column list-group category-block" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                <li class="nav-item list-group-item text-white">
                    <a href="<%=request.getContextPath()%>/admin/mark" class="nav-link">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Input Mark
                            <span class="right badge badge-success">Edit</span>
                        </p>
                    </a>
                </li>
                <li class="nav-item list-group-item text-white">
                    <a href="<%=request.getContextPath()%>/admin/student" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                            Student
                            <span class="right badge badge-success">Edit</span>
                        </p>
                    </a>
                </li>
                <li class="nav-item list-group-item text-white">
                    <a href="<%=request.getContextPath()%>/admin/instructor" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                            Instructor
                            <span class="right badge badge-success">Edit</span>
                        </p>
                    </a>
                </li>
                <li class="nav-item list-group-item text-white">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-copy"></i>
                        <p>
                            Information
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<%=request.getContextPath()%>/admin/semester" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Semester</p>
                                <span class="right badge badge-success">Edit</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item list-group-item text-white">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-chart-pie"></i>
                        <p>
                            Course Detail
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<%=request.getContextPath()%>/admin/course" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Course</p>
                                <span class="right badge badge-success">Edit</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item list-group-item text-white">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-tree"></i>
                        <p>
                            Major Detail
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<%=request.getContextPath()%>/admin/major" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Major</p>
                                <span class="right badge badge-success">Edit</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<%=request.getContextPath()%>/admin/class" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Class</p>
                                <span class="right badge badge-success">Edit</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item list-group-item text-white">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-table"></i>
                        <p>
                            Account Information
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<%=request.getContextPath()%>/admin/account" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Account</p>
                                <span class="right badge badge-success">Edit</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<%=request.getContextPath()%>/admin/role" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Role</p>
                                <span class="right badge badge-success">Edit</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>