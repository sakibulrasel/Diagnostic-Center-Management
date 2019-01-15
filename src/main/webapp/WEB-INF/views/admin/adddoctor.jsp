<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="d" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>S.R</title>

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="resources/assets/dist/img/ico/favicon.png" type="image/x-icon">

        <!-- Start Global Mandatory Style
        =====================================================================-->
        <!-- jquery-ui css -->
        <link href="resources/assets/plugins/jquery-ui-1.12.1/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap -->
        <link href="resources/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap rtl -->
        <!--<link href="assets/bootstrap-rtl/bootstrap-rtl.min.css" rel="stylesheet" type="text/css"/>-->
        <!-- Lobipanel css -->
        <link href="resources/assets/plugins/lobipanel/lobipanel.min.css" rel="stylesheet" type="text/css"/>
        <!-- Pace css -->
        <link href="resources/assets/plugins/pace/flash.css" rel="stylesheet" type="text/css"/>
        <!-- Font Awesome -->
        <link href="resources/assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <!-- Pe-icon -->
        <link href="resources/assets/pe-icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css"/>
        <!-- Bootstrap-wysihtml5 css -->
        <link href="resources/assets/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css" rel="stylesheet" type="text/css"/>
        <!-- Themify icons -->
        <link href="resources/assets/themify-icons/themify-icons.css" rel="stylesheet" type="text/css"/>
        <!-- End Global Mandatory Style
        =====================================================================-->
        <!-- Start Theme Layout Style
        =====================================================================-->
        <!-- Theme style -->
        <link href="resources/assets/dist/css/stylehealth.min.css" rel="stylesheet" type="text/css"/>
        <script src="resources/js/angular.js"></script>
        <script>
            var doc = ${doctormodelobject};
            var dept =${departmentlist};

            console.log(doc);

            angular.module('myApp', []).controller('DoctorController',
                    function ($scope) {
                        $scope.Doctor = doc;
                        $scope.Department = dept;
                        console.log($scope.Department);
                    });
        </script>
        <style type="text/css">

            .panel>.panel-heading {
                color: #558b2f;
                background-color: #aed581;
                border-color: #aed581;
            }
            .panel>.panel-body
            {
                background-color: #f1f8e9;
                border-color: #aed581;
            }

            .form-control:FOCUS
            {
                border: 2px thin #9ccc65;
                border-radius: 5px;
            }
            .list-group-item {
                overflow: hidden;
            }
            #removebuttons
            {
                color: #ffffff;
                background-color: #e57373;
            }
            #removebuttons:HOVER {
                color: #ffffff;
                background-color: #e53935;
            }
            #editbuttons{
                color: #ffffff;
                background: linear-gradient(to bottom, #aed581 50%, #9ccc65 50%);	
            }
            #editbuttons:HOVER {
                color: #ffffff;
                background: linear-gradient(to bottom, #9ccc65 50%, #8bc34a 50%);	
            }
        </style>

    </head>
    <body class="hold-transition sidebar-mini" ng-app="myApp" ng-controller="DoctorController">        
        <!-- Site wrapper -->
        <div class="wrapper">
            <header class="main-header">
                <a href="welcome" class="logo"> <!-- Logo -->
                    <span class="logo-mini">
                        <!--<b>A</b>H-admin-->
                        <img src="resources/assets/dist/img/mini-logo.png" alt="">
                    </span>
                    <span class="logo-lg">
                        <!--<b>Admin</b>H-admin-->
                        <img src="resources/assets/dist/img/logo.png" alt="">
                    </span>
                </a>
                <!-- Header Navbar -->
                <nav class="navbar navbar-static-top ">
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button"> <!-- Sidebar toggle button-->
                        <span class="sr-only">Toggle navigation</span>
                        <span class="fa fa-tasks"></span>
                    </a>
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- Orders -->

                            <!-- Messages -->

                            <!-- Notifications -->

                            <!-- Tasks -->

                            <!-- user -->
                            <li class="dropdown dropdown-user admin-user">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
                                    <div class="user-image">
                                        <img id="adminimage" class="img-rounded img-fluid"
                             src="resources/adminimage/${sessionScope.UserId}.jpg" height="40px"
                             width="40px"/>
                                    </div>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="welcome"><i class="fa fa-users"></i> User Profile</a></li>
                                    <li><a href="#"><i class="fa fa-gear"></i> Settings</a></li>
                                    <li><a href="logout"><i class="fa fa-sign-out"></i> Logout</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- =============================================== -->
            <!-- Left side column. contains the sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar -->
                <div class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="image pull-left">
                            <img id="adminimage" class="img-rounded img-fluid"
                             src="resources/adminimage/${sessionScope.UserId}.jpg" height="40px"
                             width="40px"/>
                        </div>
                        <div class="info">
                            <h4>Welcome</h4>
                            <p>${sessionScope.UserLoggedIn}</p>
                        </div>
                    </div>

                    <!-- sidebar menu -->
                    <ul class="sidebar-menu">
                        <li class="active">
                            <a href="welcome"><i class="fa fa-hospital-o"></i><span>Dashboard</span>
                            </a>
                        </li>

                        <li class="treeview">
                            <a href="welcome">
                                <i class="fa fa-user-circle-o"></i><span>Human Resources</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="signup">Add Admin</a></li>
                                <li><a href="users">Admin List</a></li>
                                <li><a href="adddoctor">Add Doctor</a></li>
                                <li><a href="doctorlist">Doctor list</a></li>
                                <li><a href="addreceptionist">Add Receptionist</a></li>
                                <li><a href="receptionistlist">Receptionist list</a></li>

                                <li><a href="addpharmacist">Add Laboratories</a></li>
                                <li><a href="pharmacist">Laboratories list</a></li>
                                <li><a href="addaccountant">Add Accountant</a></li>
                                <li><a href="accountantlist">Accountant list</a></li>

                            </ul>
                        </li>



                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-sitemap"></i><span>Department</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="adddepartment">Add Department</a></li>
                                <li><a href="departmentlist">Department list</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-list-alt"></i> <span>Schedule</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="addtimeschedule">Add schedule</a></li>
                                <li><a href="timeschedulelist">schedule list</a></li>

                            </ul>
                        </li>

                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-bed"></i><span>Bed Manager</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="addbed">Add Bed</a></li>
                                <li><a href="bedlist">Bed list</a></li>
                            </ul>
                        </li>

                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-user"></i><span>Patient</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">

                                <li><a href="patientlist">patient list</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-check-square-o"></i><span>Appionment</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">

                                <li><a href="viewappointmentlist">Appiontment list</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-file-text"></i><span>Prescription</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">

                                <li><a href="presforadmin">Prescription List</a></li>

                            </ul>
                        </li>

                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-credit-card-alt"></i><span>payment</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">

                                <li><a href="paymentlists">payment list</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-file-text"></i><span>Report</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="reportView">Appointment Report</a></li>
                                <li><a href="paymentreportView">Payment Report</a></li>
                            </ul>
                        </li>


                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-file-text-o"></i><span>Addmission</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">

                                <li><a href="addmissionlists">Addmission list</a></li>
                            </ul>
                        </li>


                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-file-text"></i><span>Test</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="addtesttype">Add Test Type</a></li>
                                <li><a href="testtypelist">Test Type List</a></li>
                                <li><a href="addtest">Add Test</a></li>
                                <li><a href="testlist">Test List</a></li>

                                <li><a href="testreportlists">Test Report List</a></li>

                                <li><a href="testprescriptionlists">Test Prescription List</a></li>

                            </ul>
                        </li>



                    </ul>
                </div> <!-- /.sidebar -->
            </aside>
            <!-- =============================================== -->
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <div class="header-icon">
                        <i class="pe-7s-note2"></i>
                    </div>
                    <div class="header-title">
                        <form action="#" method="get" class="sidebar-form search-box pull-right hidden-md hidden-lg hidden-sm">
                            <div class="input-group">
                                <input type="text" name="q" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button type="submit" name="search" id="search-btn" class="btn"><i class="fa fa-search"></i></button>
                                </span>
                            </div>
                        </form>  
                        <h1>Doctor</h1>
                        <small>Doctor list</small>
                        <ol class="breadcrumb hidden-xs">
                            <li><a href="welcome"><i class="pe-7s-home"></i> Home</a></li>
                            <li class="active">Dashboard</li>
                        </ol>
                    </div>
                </section>
                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <!-- Form controls -->
                        <div class="col-sm-12">
                            <div class="panel panel-bd lobidrag">
                                <div class="panel-heading">
                                    <div class="btn-group"> 
                                        <a class="btn btn-primary" href="doctorlist"> <i class="fa fa-list"></i>  Doctor List </a>  
                                    </div>
                                </div>
                                <div class="panel-body">

                                    <form:form class="col-sm-12" name="addDoctorObject"
                                               modelAttribute="addDoctorObject1" action="addingdoctor"
                                               method="post" enctype="multipart/form-data">
                                        <c:if test="${check}">
                                            <div class="col-sm-6 form-group">
                                                <label>Doctor Id</label>
                                                <form:input class="form-control"  type="number"   path="doctorid" required="true"></form:input>
                                                </div>
                                        </c:if>
                                        <c:if test="${!check}">
                                            <div class="col-sm-6 form-group">
                                                <label>Doctor Id</label>
                                                <form:input class="form-control"  type="number" readonly="true"  path="doctorid" required="true"></form:input>
                                                </div>
                                        </c:if>
                                        <div class="col-sm-6 form-group">
                                            <label>First Name</label>
                                            <form:input class="form-control" Placeholder="First Name" type="text" path="fname" required="true"></form:input>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <label>Last Name</label>
                                            <form:input class="form-control" Placeholder="Last Name" type="text" path="lname" required="true"></form:input>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <label>Email</label>
                                            <form:input class="form-control"
                                                        Placeholder="Email Address" type="text" path="emailid" required="true"></form:input>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <label>Password</label>
                                            <form:input type="password" class="form-control"
                                                        placeholder="Password" path="password" required="true"></form:input>
                                            </div>


                                            <div class="col-sm-6 form-group">
                                                <label>Department</label>
                                                <select class="form-control" ng-model="selectedDepartment" ng-options="x.deptname for x in Department"></select>
                                            </div>


                                        <form:hidden  class="form-control" value="{{selectedDepartment.deptname}}" path="deptname"></form:hidden>


                                            <div class="col-sm-6 form-group">
                                                <label>Address</label>
                                            <form:input type="text" class="form-control"
                                                        placeholder="Address" path="address" required="true"></form:input>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <label>Age</label>
                                            <form:input type="text" class="form-control"
                                                        placeholder="Age" path="age" required="true"></form:input>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <label>Mobile</label>
                                            <form:input type="text" class="form-control"
                                                        placeholder="Phone" path="phone" required="true"></form:input>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <label>Experience</label>
                                            <form:input type="text" class="form-control"
                                                        placeholder="Experience" path="experience" required="true"></form:input>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <label>Appointment Fees</label>
                                            <form:input type="text" class="form-control"
                                                        placeholder="Fees" path="fee" required="true"></form:input>
                                            </div>
                                            <div class="col-sm-6 form-group">
                                                <label>Sex</label><br>
                                                <label class="radio-inline">
                                                <form:radiobutton path="gender" checked="checked" value="Male"/>Male </label> 
                                            <label class="radio-inline"><form:radiobutton path="gender" value="Female"/>Female</label>
                                        </div>

                                        <div class="col-sm-6 form-group">
                                            <label >Picture upload</label>
                                            <form:input type="file" name="fileToUpload" id="fileToUpload"
                                                        path="pimage" ></form:input>
                                            </div>  






                                            <div class="col-sm-12 reset-button">
                                                <a href="#" class="btn btn-warning">Reset</a>
                                            <c:if test="${check}">
                                                <form:button id="editdoctorbutton" type="submit" name="Adddoctor"
                                                             class="btn">Save</form:button>
                                            </c:if>
                                            <c:if test="${!check}">
                                                <form:button id="editdoctorbutton" type="submit" name="EditDoctor"
                                                             class="btn">Update</form:button>
                                            </c:if>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>

                </section> <!-- /.content -->
            </div> <!-- /.content-wrapper -->
            <footer class="main-footer">
                <div class="pull-right hidden-xs"> <b>Version</b> 1.0</div>
                <strong>Copyright &copy; 2018 <a href="#">Sakibul Haque. Contact Number:01738363303</a>.</strong> All rights reserved.
            </footer>
        </div> <!-- ./wrapper -->
        <!-- Start Core Plugins
        =====================================================================-->
        <!-- jQuery -->
        <script src="resources/assets/plugins/jQuery/jquery-1.12.4.min.js" type="text/javascript"></script>
        <!-- jquery-ui --> 
        <script src="resources/assets/plugins/jquery-ui-1.12.1/jquery-ui.min.js" type="text/javascript"></script>
        <!-- Bootstrap -->
        <script src="resources/assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- lobipanel -->
        <script src="resources/assets/plugins/lobipanel/lobipanel.min.js" type="text/javascript"></script>
        <!-- Pace js -->
        <script src="resources/assets/plugins/pace/pace.min.js" type="text/javascript"></script>
        <!-- SlimScroll -->
        <script src="resources/assets/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <!-- FastClick -->
        <script src="resources/assets/plugins/fastclick/fastclick.min.js" type="text/javascript"></script>
        <!-- Hadmin frame -->
        <script src="resources/assets/dist/js/custom1.js" type="text/javascript"></script>

        <!-- End Core Plugins
        =====================================================================-->
        <!-- Start Theme label Script
        =====================================================================-->
        <!-- Dashboard js -->
        <script src="resources/assets/dist/js/custom.js" type="text/javascript"></script>
        <!-- End Theme label Script
        =====================================================================-->

        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

        <script>
                                                            $(document).ready(function () {
                                                                var date_input = $('input[name="dob"]');
                                                                //our date input has the name "date"
                                                                var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                                date_input.datepicker({
                                                                    format: 'yyyy/mm/dd',
                                                                    container: container,
                                                                    todayHighlight: true,
                                                                    autoclose: true,
                                                                })
                                                            })
        </script>
    </body>

    </html>
