<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <link rel="icon" type="image/png"
          href="${pageContext.request.contextPath}/images/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>个人信息</title>

    <meta
            content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
            name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
          rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="${pageContext.request.contextPath}/css/animate.min.css"
          rel="stylesheet" />

    <!--  Light Bootstrap Table core CSS    -->
    <link
            href="${pageContext.request.contextPath}/css/light-bootstrap-dashboard.css"
            rel="stylesheet" />


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="${pageContext.request.contextPath}/css/demo.css"
          rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="${pageContext.request.contextPath}/css/pe-icon-7-stroke.css"
          rel="stylesheet" />
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script>

</head>
<body>

<div class="wrapper">




    <div class="sidebar" data-color="grow" data-image="${pageContext.request.contextPath}/images/sidebar-5.jpg">
        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="#" class="simple-text">
                    <img src="${pageContext.request.contextPath}/images/logo.png">
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="manage/SkipAction?skip=index">
                        <i class="pe-7s-graph"></i>
                        <p>管理员首页</p>
                    </a>
                </li>
                <li>
                    <a href="manage/SkipAction?skip=II">
                        <i class="pe-7s-user"></i>
                        <p>个人信息</p>
                    </a>
                </li>
                <li>
                    <a href="manage/SkipAction?skip=Pend">
                        <i class="pe-7s-news-paper"></i>
                        <p>新闻列表</p>
                    </a>
                </li>

                <li>
                    <a href="manage/SkipAction?skip=selUser">
                        <i class="pe-7s-note2"></i>
                        <p>用户管理</p>
                    </a>
                </li>
                <li>
                    <a href="manage/SkipAction?skip=AddUser">
                        <i class="pe-7s-map-marker"></i>
                        <p>添加用户</p>
                    </a>
                </li>

                <li>
                    <a href="manage/SkipAction?skip=TypeManage">
                        <i class="pe-7s-bell"></i>
                        <p>类别管理</p>
                    </a>
                </li>


                <li>
                    <a href="manage/SkipAction?skip=Upload">
                        <i class="pe-7s-science"></i>
                        <p>新闻上传</p>
                    </a>
                </li>
                <li class="active-pro">
                    <a href="manage/">
                        <i class="pe-7s-rocket"></i>
                        <p>购买专业版</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="main-panel">

        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <!-- <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button> -->
                    <a class="navbar-brand" href="#">新闻管理系统</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="pe-7s-graph">消息</i>
                                <b class="caret"></b>
                                <span class="notification">5</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Notification 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Another notification</a></li>
                            </ul>
                        </li>


                    </ul>

                    <ul class="nav navbar-nav navbar-right">

                        <li>
                            <a href="manage/UserAction?flag=clear">
                                安全退出
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">修改信息</h4>
                            </div>
                            <div class="content">
                                <form
                                        action="manage/UserAction?flag=upUser&from=II"
                                        method="post">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>用户ID(不可更改)</label> <input type="text"
                                                                                 class="form-control" readonly=true name="id"
                                                                                 value="16">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>权限</label> <input type="text" class="form-control"
                                                                         readonly="readonly" value="超级管理员">
                                                <input type="hidden" name="userPower"
                                                       value="1">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <hidden name="depID" value="4"></hidden>
                                                <label for="exampleInputEmail1">部门</label> <input
                                                    type="text" class="form-control" readonly="readonly"
                                                    value="爱尚教育部"> <input type="hidden"
                                                                          name="depID" value="4">
                                                <!-- <input type="email" class="form-control" placeholder="Email"> -->
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>用户名</label> <input type="text" class="form-control"
                                                                          placeholder="真实姓名" id="userName" name="userName"
                                                                          value="admin"> <span id="recMsg"></span>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>上传头像</label> <span >
													 <input type="file" id="icon"
                                                            class="form-control" name="icon">
													</span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>密码</label> <input type="password"
                                                                         class="form-control" placeholder="不能为汉字" name="userPwd"
                                                                         value="admin">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>性别</label><br> <input type="radio"

                                                                             name="userSex" value="男">男&nbsp&nbsp&nbsp&nbsp <input
                                                    type="radio"
                                                    checked="checked"
                                                    name="userSex" value="女">女
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>年龄</label> <input type="number" name="userAge"
                                                                         id="userAge" class="form-control" placeholder="18"
                                                                         value="18">
                                            </div>
                                        </div>
                                    </div>


                                    <input type="hidden" name="icon" value="ICon\2018\09-25\e3b25415-a75c-49f1-9fcf-456091c4b2a7_001.gif">
                                    <button type="submit" id="sbb"
                                            class="btn btn-info btn-fill pull-right">修改</button>
                                    <div class="clearfix"></div>
                                </form>
                            </div>
                        </div>
                    </div>



                    <div class="col-md-4">
                        <div class="card card-user">
                            <div class="image">
                                <img src="${pageContext.request.contextPath}/images/userleft.bg.jpg" alt="/newsSystem."/>
                            </div>
                            <div class="content">
                                <div class="author">
                                    <a href="#">

                                        <img class="avatar border-gray" src="images\faces\face-3.jpg" alt="/newsSystem."/>




                                        <h4 class="title">admin<br />
                                            <small>爱尚教育部</small>
                                        </h4>
                                    </a>
                                </div>
                                <p class="description text-center"> admin是一位 <br>
                                    18岁的女孩, 在<br>
                                    爱尚教育部努力工作
                                </p>
                            </div>
                            <hr>
                            <div class="text-center">
                                <button href="#" class="btn btn-simple"><i class="fa fa-facebook-square"></i></button>
                                <button href="#" class="btn btn-simple"><i class="fa fa-twitter"></i></button>
                                <button href="#" class="btn btn-simple"><i class="fa fa-google-plus-square"></i></button>

                            </div>
                        </div>
                    </div>



                </div>
            </div>
        </div>



        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">
                                浏览效果界面
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Company
                            </a>
                        </li>
                        <li>
                            <a href="http://localhost:8080/">
                                Tomcat管理页
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                微博
                            </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    &copy; 2017  当前累计登陆访问次数 ： <a href="#" target="_blank" title="联系我们"> 623</a> - 统计来自 <a href="#" title="爱尚实训" target="_blank">爱尚教育</a>
                </p>
            </div>
        </footer>

    </div>
</div>


</body>

<!--   Core JS Files   -->
<script src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"
        type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"
        type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script
        src="${pageContext.request.contextPath}/js/bootstrap-checkbox-radio-switch.js"></script>

<!--  Charts Plugin -->
<script src="${pageContext.request.contextPath}/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="${pageContext.request.contextPath}/js/bootstrap-notify.js"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script
        src="${pageContext.request.contextPath}/js/light-bootstrap-dashboard.js"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="${pageContext.request.contextPath}/js/demo.js"></script>






</html>
