<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 2019/7/18
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>IWorkCLoud</title>
    <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet"
          type="text/css">
    <link href="${pageContext.request.contextPath}/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/iworkcloud.css" rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="#">IWorkCloud</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
            data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="首页">
                <a class="nav-link" href="${pageContext.request.contextPath}/page/index">
                    <i class="fa fa-fw fa-dashboard"></i>
                    <span class="nav-link-text">首页</span>
                </a>
            </li>

            <c:if test="${sessionScope.department eq 'Finance' || sessionScope.department eq 'boss'}">
                <li class="nav-item" data-toggle="tooltip" data-placement="right" title="财务">
                    <a class="nav-link" href="${pageContext.request.contextPath}/page/bill">
                        <i class="fa fa-fw fa-area-chart"></i>
                        <span class="nav-link-text">财务</span>
                    </a>
                </li>
            </c:if>

            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="日程">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseSchedule"
                   data-parent="#exampleAccordion">
                    <i class="fa fa-fw fa-calendar"></i>
                    <span class="nav-link-text">日程</span>
                </a>
                <ul class="sidenav-second-level collapse" id="collapseSchedule">
                    <li>
                        <a href="${pageContext.request.contextPath}/page/schedule">日程&请假</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/page/note">记事本</a>
                    </li>
                </ul>
            </li>
            <c:if test="${sessionScope.department eq 'Manager' || sessionScope.department eq 'boss'}">
                <li class="nav-item" data-toggle="tooltip" data-placement="right" title="考勤">
                    <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents"
                       data-parent="#exampleAccordion">
                        <i class="fa fa-fw fa-male"></i>
                        <span class="nav-link-text">考勤</span>
                    </a>
                    <ul class="sidenav-second-level collapse" id="collapseComponents">
                        <li>
                            <a href="${pageContext.request.contextPath}/page/attendance">考勤统计</a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/page/excellentStaff">请假批示&优秀员工</a>
                        </li>
                    </ul>
                </li>
            </c:if>

            <c:if test="${sessionScope.department eq 'Manager' || sessionScope.department eq 'boss'}">
                <li class="nav-item" data-toggle="tooltip" data-placement="right" title="活动">
                    <a class="nav-link" href="${pageContext.request.contextPath}/page/activities">
                        <i class="fa fa-fw fa-child"></i>
                        <span class="nav-link-text">活动</span>
                    </a>
                </li>
            </c:if>


            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="项目">
                <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseProjects"
                   data-parent="#exampleAccordion">
                    <i class="fa fa-fw fa-wrench"></i>
                    <span class="nav-link-text">项目</span>
                </a>
                <ul class="sidenav-second-level collapse" id="collapseProjects">
                    <li>
                        <a href="${pageContext.request.contextPath}/page/projects">项目</a>
                    </li>
                    <c:if test="${sessionScope.department eq 'projectManager' || sessionScope.department eq 'boss'}">
                        <li>
                            <a href="${pageContext.request.contextPath}/page/projectsManage">项目管理</a>
                        </li>
                    </c:if>
                </ul>
            </li>
            <c:if test="${sessionScope.department eq 'Personel' || sessionScope.department eq 'boss'}">
                <li class="nav-item" data-toggle="tooltip" data-placement="right" title="部门管理">
                    <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseMulti"
                       data-parent="#exampleAccordion">
                        <i class="fa fa-fw fa-sitemap"></i>
                        <span class="nav-link-text">部门管理</span>
                    </a>
                    <ul class="sidenav-second-level collapse" id="collapseMulti">
                        <li>
                            <a href="${pageContext.request.contextPath}/page/staffManage">人员变动</a>
                        </li>
                    </ul>
                </li>
            </c:if>

        </ul>

        <ul class="navbar-nav sidenav-toggler">
            <li class="nav-item">
                <a class="nav-link text-center" id="sidenavToggler">
                    <i class="fa fa-fw fa-angle-left"></i>
                </a>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">
                <div class="dropdown-menu dropdown-menu-right bg-dark" aria-labelledby="alertsDropdown">
                    <h6 class="dropdown-header">用户:</h6>
                    <div class="dropdown-divider"></div>
                    <div class="dropdown-item" onclick="modifyPassword()">
                        <small style="color: #868e96;">修改密码</small>
                    </div>
                    <div class="dropdown-divider"></div>
                    <div class="dropdown-item" id="logOut">
                        <small style="color: #868e96;">登出</small>
                    </div>
                </div>
                <div class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" data-toggle="dropdown"
                     aria-haspopup="true" aria-expanded="false">
                    <i class="fa fa-fw fa-user"></i>
                    <span class="d-lg-none">用户</span>
                </div>
            </li>
        </ul>
    </div>
</nav>
<div class="content-wrapper">
    <div class="container-fluid">
        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="#">个人中心</a>
            </li>
            <li class="breadcrumb-item active">财务统计</li>
        </ol>
        <div class="row">
            <div class="col-xl-6 col-sm-6 mb-3">
                <div class="card text-white bg-primary o-hidden h-100">
                    <div class="card-body" onclick="billXlsAdd()">
                        <div class="card-body-icon">
                            <i class="fa fa-fw fa-hand-paper-o"></i>
                        </div>
                        <div class="mr-5" href="#">导入财务报表</div>
                    </div>
                    <a class="card-footer text-white clearfix small z-1" href="#" onclick="billAdd()">
                        <span class="float-left">单笔添加</span>
                        <span class="float-right">
                <i class="fa fa-angle-right"></i>
              </span>
                    </a>
                </div>
            </div>
            <div class="col-xl-6 col-sm-6 mb-3">
                <div class="card text-white bg-warning o-hidden h-100">
                    <div class="card-body" onclick="bonusXlsAdd()">
                        <div class="card-body-icon">
                            <i class="fa fa-fw fa-list"></i>
                        </div>
                        <div class="mr-5">导入奖金补贴报表</div>
                    </div>
                    <a class="card-footer text-white clearfix small z-1" href="#" onclick="bonusAdd()">
                        <span class="float-left">单笔添加</span>
                        <span class="float-right">
                <i class="fa fa-angle-right"></i>
              </span>
                    </a>
                </div>
            </div>
        </div>
        <!-- Area Chart Example-->
        <div class="card mb-3">
            <div class="card-header">
                <i class="fa fa-area-chart"></i>今年净营收
            </div>
            <div class="card-body">
                <canvas id="myAreaChart" width="100%" height="30"></canvas>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <!-- Example Bar Chart Card-->
                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fa fa-bar-chart"></i> 近月收入支出对比
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-12 my-auto">
                                <canvas id="myBarChart" width="100%" height="70"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <di class="row">
            <div class="col-lg-6">
                <!-- Example Pie Chart Card-->
                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fa fa-pie-chart"></i>支出内容
                    </div>
                    <div class="card-body">
                        <canvas id="myPieChart" width="100%" height="60"></canvas>
                    </div>
                </div>
            </div>
        </di>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
        <div class="container">
            <div class="text-center">
                <small>Copyright © Nanchang University</small>
            </div>
        </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fa fa-angle-up"></i>
    </a>

    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/layer/layer.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/vendor/chart.js/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/datatables/jquery.dataTables.js"></script>
    <script src="${pageContext.request.contextPath}/vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="${pageContext.request.contextPath}/js/sb-admin-datatables.min.js"></script>
    <script>
        /**
         * LayerJS打开iframe弹窗
         */
        function bonusAdd() {
            layer.open({
                type: 2, title: '添加奖金或补贴', area: ['500px', '420px'], scrollbar: false, offset: 'auto',
                content: '${pageContext.request.contextPath}/page/iframe/bonusAdd',
            })
        }

        function bonusXlsAdd() {
            layer.open({
                type: 2, title: '导入奖金补贴报表', area: ['500px', '420px'], scrollbar: false, offset: 'auto',
                content: '${pageContext.request.contextPath}/page/iframe/bonusXlsUpload',
            })
        }

        function billAdd() {
            layer.open({
                type: 2, title: '添加公司账单', area: ['500px', '420px'], scrollbar: false, offset: 'auto',
                content: '${pageContext.request.contextPath}/page/iframe/billAdd',
            })
        }

        function billXlsAdd() {
            layer.open({
                type: 2, title: '导入账单报表', area: ['500px', '420px'], scrollbar: false, offset: 'auto',
                content: '${pageContext.request.contextPath}/page/iframe/billXlsUpload',
            })
        }
    </script>
    <script>

        $(document).ready(function () {
            $("#logOut").click(function () {
                layer.confirm('确定注销登陆？', {
                    btn: ['确定', '取消'] //按钮
                }, function () {
                    layer.msg("已注销");
                    setTimeout(function () {
                        $(location).attr('href', '${pageContext.request.contextPath}/page/invalidateSession')
                    }, 2000);
                }, function () {
                    layer.msg("取消", {icon: 2})
                });
            })

        })

        function modifyPassword() {
            layer.open({
                type: 2, title: '修改密码', area: ['500px', '420px'], scrollbar: false, offset: 'auto',
                content: '${pageContext.request.contextPath}/page/iframe/modifyPassword',
            })
        }
    </script>
    <script>
        /**
         * ChartJS线性图
         * @type {string}
         */
        // Chart.js scripts
        // -- Set new default font family and font color to mimic Bootstrap's default styling
        Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
        Chart.defaults.global.defaultFontColor = '#292b2c';
        // -- Area Chart Example
        var ctx = document.getElementById("myAreaChart");
        var myLineChart = new Chart(ctx, {
            type: 'line',
            data: {
                labels: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
                datasets: [{
                    label: "净营收",
                    lineTension: 0.3,
                    backgroundColor: "rgba(2,117,216,0.2)",
                    borderColor: "rgba(2,117,216,1)",
                    pointRadius: 5,
                    pointBackgroundColor: "rgba(2,117,216,1)",
                    pointBorderColor: "rgba(255,255,255,0.8)",
                    pointHoverRadius: 5,
                    pointHoverBackgroundColor: "rgba(2,117,216,1)",
                    pointHitRadius: 20,
                    pointBorderWidth: 2,
                    //EL表达式数据填充
                    data: [
                        ${income[0]-expense[0]},
                        ${income[1]-expense[1]},
                        ${income[2]-expense[2]},
                        ${income[3]-expense[3]},
                        ${income[4]-expense[4]},
                        ${income[5]-expense[5]},
                        ${income[6]-expense[6]},
                        ${income[7]-expense[7]},
                        ${income[8]-expense[8]},
                        ${income[9]-expense[9]},
                        ${income[10]-expense[10]},
                        ${income[11]-expense[11]},
                    ],
                }],
            },
            options: {
                scales: {
                    xAxes: [{
                        time: {
                            unit: 'month'
                        },
                        gridLines: {
                            display: false
                        },
                        ticks: {
                            maxTicksLimit: 7
                        }
                    }],
                    yAxes: [{
                        ticks: {
                            min: 0,
                            max: 1000000,
                            maxTicksLimit: 5
                        },
                        gridLines: {
                            color: "rgba(0, 0, 0, .125)",
                        }
                    }],
                },
                legend: {
                    display: false
                }
            }
        });
        /**
         * 柱状图
         * @type {HTMLElement}
         */
        // -- Bar Chart Example
        var ctx = document.getElementById("myBarChart");
        var myLineChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
                //填充两个datasets易于对比
                datasets: [{
                    label: "收入",
                    backgroundColor: "rgb(0,216,91)",
                    borderColor: "rgb(0,216,91)",
                    data: [
                        ${income[0]},
                        ${income[1]},
                        ${income[2]},
                        ${income[3]},
                        ${income[4]},
                        ${income[5]},
                        ${income[6]},
                        ${income[7]},
                        ${income[8]},
                        ${income[9]},
                        ${income[10]},
                        ${income[11]},
                    ]
                }, {
                    label: "支出",
                    backgroundColor: "rgb(216,62,15)",
                    borderColor: "rgb(216,62,15)",
                    data: [
                        ${expense[0]},
                        ${expense[1]},
                        ${expense[2]},
                        ${expense[3]},
                        ${expense[4]},
                        ${expense[5]},
                        ${expense[6]},
                        ${expense[7]},
                        ${expense[8]},
                        ${expense[9]},
                        ${expense[10]},
                        ${expense[11]},
                    ]
                }],
            },
            options: {
                scales: {
                    xAxes: [{
                        time: {
                            unit: 'month'
                        },
                        gridLines: {
                            display: false
                        },
                        ticks: {
                            maxTicksLimit: 12
                        }
                    }],
                    yAxes: [{
                        ticks: {
                            min: 0,
                            max: 1000000,
                            maxTicksLimit: 5
                        },
                        gridLines: {
                            display: true
                        }
                    }],
                },
                legend: {
                    display: false
                }
            }
        });
        /**
         * 饼状图
         * @type {HTMLElement}
         */
        // -- Pie Chart Example
        var ctx = document.getElementById("myPieChart");
        var myPieChart = new Chart(ctx, {
            type: 'pie',
            data: {
                labels: ["其他", "工资", "补贴", "奖金"],
                datasets: [{
                    data: [${expenses-salary}, ${salary}, ${subsidies}, ${bonuses}],
                    backgroundColor: ['#007bff', '#00ff58', '#dc3545', '#ffc107'],
                }],
            },
        });

    </script>
</div>
</body>

</html>

