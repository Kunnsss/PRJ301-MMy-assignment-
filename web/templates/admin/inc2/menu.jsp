<%@page import="model.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
   

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
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                <li class="nav-item list-group-item text-white">
                    <a href="<%=request.getContextPath()%>/user/mark" class="nav-link">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Mark
                            <span class="right badge badge-success">view</span>
                        </p>
                    </a>
                </li>
                <li class="nav-item list-group-item text-white">
                    <a href="<%=request.getContextPath()%>/user/student" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                            Student
                            <span class="right badge badge-success">View</span>
                        </p>
                    </a>
                </li>
                <li class="nav-item list-group-item text-white">
                    <a href="<%=request.getContextPath()%>/user/instructor" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                            Instructor
                            <span class="right badge badge-success">view</span>
                        </p>
                    </a>
                </li>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>