<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="<c:url value="/lib/AdminLTE/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/lib/font-awesome/css/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/lib/Ionians/css/ionians.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/lib/AdminLTE/dist/css/AdminLTE.min.css"/>">
    <link href="<c:url value="/lib/AdminLTE/dist/css/skins/skin-blue.min.css"/>" type="text/css" rel="stylesheet"/>
    <title>用户管理</title>
    <script type="text/javascript" src="<c:url value="/lib/AdminLTE/plugins/jQuery/jquery-2.2.3.min.js"/>" ></script>
    <script type="text/javascript" src="<c:url value="/lib/AdminLTE/bootstrap/js/bootstrap.min.js"/>" ></script>
    <script type="text/javascript" src="<c:url value="/lib/AdminLTE/dist/js/app.min.js"/>" ></script>

    <script>
        function changeFrameHeight() {
            var ifm = document.getElementById("main");
            ifm.height = document.documentElement.clientHeight - 90;
        }
        window.onresize = function () {
            changeFrameHeight();
        }
    </script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <!-- Main Header -->
    <header class="main-header">
        <!-- Logo -->
        <div href="../../index2.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini">
                    <img src="images/hollysyslogo.png" style="height:30px"/></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg">
                    <img src="images/hollysys.png" style="height:35px"/></span>
        </div>

        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <div style="float:left;font-size:25px;color:white;padding-top:8px">工艺系统大数据优化平台</div>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="label label-success">1</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">您有 1 个消息</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li>
                                        <!-- start message -->
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="lib/AdminLTE/dist/img/avatar5.png" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                锅炉告警
                                                <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                            </h4>
                                            <p>锅炉温度过高，请调节！</p>
                                        </a>
                                    </li>
                                    <!-- end message -->
                                </ul>
                            </li>
                            <!--<li class="footer"><a href="#">查看全部信息</a></li>-->
                        </ul>
                    </li>
                    <li class="dropdown notifications-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-bell-o"></i>
                            <span class="label label-warning">5</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">您有 5 个通知</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-users text-aqua"></i> 请调节进风量
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-warning text-yellow"></i> 锅炉温度发生变化请查看
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-users text-red"></i> 一号发电机组有故障请检修
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-shopping-cart text-green"></i> 电压不稳，请注意检查故障
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-user text-red"></i> 有人操作进风机请核实
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <!--<li class="footer"><a href="#">查看全部</a></li>-->
                        </ul>
                    </li>
                    <li class="dropdown tasks-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-flag-o"></i>
                            <span class="label label-danger">4</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">您有 4 个任务</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li>
                                        <!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                锅炉检修
                                                <small class="pull-right">20%</small>
                                            </h3>
                                            <div class="progress xs">
                                                <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar"
                                                     aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                    <span class="sr-only">20% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <!-- end task item -->
                                    <li>
                                        <!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                一号磨煤机检修
                                                <small class="pull-right">40%</small>
                                            </h3>
                                            <div class="progress xs">
                                                <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar"
                                                     aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                    <span class="sr-only">40% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <!-- end task item -->
                                    <li>
                                        <!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                二号磨煤机检修
                                                <small class="pull-right">60%</small>
                                            </h3>
                                            <div class="progress xs">
                                                <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar"
                                                     aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                    <span class="sr-only">60% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <!-- end task item -->
                                    <li>
                                        <!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                三号磨煤机检修
                                                <small class="pull-right">80%</small>
                                            </h3>
                                            <div class="progress xs">
                                                <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar"
                                                     aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                    <span class="sr-only">80% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <!-- end task item -->
                                </ul>
                            </li>
                            <!--<li class="footer">
                                <a href="#">查看全部任务</a>
                            </li>-->
                        </ul>
                    </li>
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <!-- The user image in the navbar-->
                            <img src="lib/AdminLTE/dist/img/avatar5.png" class="user-image" alt="User Image">
                            <!-- hidden-xs hides the username on small devices so only the image appears. -->
                            <span class="hidden-xs">系统管理员</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="lib/AdminLTE/dist/img/avatar5.png" class="img-circle" alt="User Image">
                                <p>
                                    <!--时间是一切财富中最宝贵的财富。
                                    <small style="text-align: right;margin-right: 10px"> —— 德奥弗拉斯多</small>-->
                                    系统管理员
                                </p>
                            </li>
                            <!-- Menu Body -->
                            <li class="user-body">
                                <div class="row">
                                    <a href="#">
                                        <div class="col-xs-4 text-center">
                                            修改资料
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="col-xs-4 text-center">
                                            修改密码
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="col-xs-4 text-center">
                                            查看账单
                                        </div>
                                    </a>
                                </div>
                                <!-- /.row -->
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <!--<div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">个人资料</a>
                                </div>-->
                                <div class="pull-right">
                                    <a href="/login.html" class="btn btn-default btn-flat">注销</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="lib/AdminLTE/dist/img/avatar5.png" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>系统管理员</p>
                    <!-- Status -->
                    <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
                </div>
            </div>
            <!-- search form (Optional) -->
            <!--<form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="搜索...">
                    <span class="input-group-btn">
                        <button type="submit" name="search" id="search-btn" class="btn btn-flat">
                            <i class="fa fa-search"></i>
                        </button>
                    </span>
                </div>
            </form>-->
            <!-- /.search form -->
            <!-- Sidebar Menu -->
            <ul class="sidebar-menu">
                <li class="active treeview">
                    <a href="#">
                        <i class="fa fa-database"></i> <span>数据分析</span>
                        <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li class="active"><a href="views/shujufenxijiagou.html" target="main"><i class="fa fa-circle-o"></i> 整体架构</a></li>
                        <li class="active"><a href="<%=path %>/user/userList">User List</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-external-link"></i> <span>子模型构建</span>
                        <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li class="active"><a href="views/submodelsel.html" target="main"><i class="fa fa-circle-o"></i> 子模型参数选取</a></li>
                        <li class="active"><a href="views/submodelstruct.html" target="main"><i class="fa fa-circle-o"></i> 子模型构建</a></li>
                        <li class="active"><a href="views/submodelassess.html" target="main"><i class="fa fa-circle-o"></i> 子模型评估</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-dashboard"></i> <span>主模型构建</span>
                        <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li class="active"><a href="views/mainmodel.html" target="main"><i class="fa fa-circle-o"></i> 系统主模型</a></li>
                        <li class="active"><a href="views/modelassess.html" target="main"><i class="fa fa-circle-o"></i> 主模型评估</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-bar-chart"></i> <span>优化控制</span>
                        <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li class="active"><a href="views/ControlConstraint.html" target="main"><i class="fa fa-circle-o"></i> 控制约束</a></li>
                        <li class="active"><a href="views/OptimizationSimulationAnalysis.html" target="main"><i class="fa fa-circle-o"></i> 优化仿真分析</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-clock-o"></i> <span>实时监视</span>
                        <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                    </a>
                    <ul class="treeview-menu">
                        <li class="active"><a href="boiler/index.html" target="main"><i class="fa fa-circle-o"></i> 锅炉风烟系统</a></li>
                        <li class="active"><a href="boiler/water.html" target="main"><i class="fa fa-circle-o"></i> 给水系统</a></li>
                        <!--<li class="active"><a href="views/zhifen.html" target="main"><i class="fa fa-circle-o"></i> 制粉系统总貌</a></li>-->
                    </ul>
                </li>
            </ul>

            <!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
    </aside>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <!--<section class="content-header">
            <h1>
                Page Header
                <small>Optional description</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
                <li class="active">Here</li>
            </ol>
        </section>-->
        <!-- Main content -->
        <section class="content">

            <!-- Your Page Content Here -->
            <iframe id="main" src="views/user/userList.jsp" name="main" onload="changeFrameHeight()" frameborder="0" style="width:100%;"></iframe>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- Home tab content -->
            <div class="tab-pane active" id="control-sidebar-home-tab">
                <h3 class="control-sidebar-heading">Recent Activity</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:;">
                            <i class="menu-icon fa fa-birthday-cake bg-red"></i>
                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>
                                <p>Will be 23 on April 24th</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->
                <h3 class="control-sidebar-heading">Tasks Progress</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:;">
                            <h4 class="control-sidebar-subheading">
                                Custom Template Design
                                <span class="pull-right-container">
                                        <span class="label label-danger pull-right">70%</span>
                                    </span>
                            </h4>
                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->
            </div>
            <!-- /.tab-pane -->
            <!-- Stats tab content -->
            <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
            <!-- /.tab-pane -->
            <!-- Settings tab content -->
            <div class="tab-pane" id="control-sidebar-settings-tab">
                <form method="post">
                    <h3 class="control-sidebar-heading">General Settings</h3>
                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Report panel usage
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                        <p>
                            Some information about this general settings option
                        </p>
                    </div>
                    <!-- /.form-group -->
                </form>
            </div>
            <!-- /.tab-pane -->
        </div>
    </aside>

    <div class="control-sidebar-bg"></div>
</div>
</body>
</html>
