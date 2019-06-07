<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!-- header logo: style can be found in header.less -->
<header class="header">
    <a href="${pageContext.request.contextPath}/adminUrl/index.html" class="logo">
        Director
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="${pageContext.request.contextPath}/adminUrl/#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas"
            role="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </a>
        <div class="navbar-right">
            <ul class="nav navbar-nav">
                <!-- Messages: style can be found in dropdown.less-->
                <%-- <li class="dropdown messages-menu">
                    <a href="${pageContext.request.contextPath}/adminUrl/#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-envelope"></i>
                        <span class="label label-success">4</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">You have 4 messages</li>
                        <li>
                            <!-- inner menu: contains the actual data -->
                            <ul class="menu">
                                <li>
                                    <!-- start message -->
                                    <a href="${pageContext.request.contextPath}/adminUrl/#">
                                        <div class="pull-left">
                                            <img src="${pageContext.request.contextPath}/adminUrl/img/26115.jpg" class="img-circle"
                                                alt="User Image" />
                                        </div>
                                        <h4>
                                            Support Team
                                        </h4>
                                        <p>Why not buy a new awesome theme?</p>
                                        <small class="pull-right"><i class="fa fa-clock-o"></i> 5 mins</small>
                                    </a>
                                </li><!-- end message -->
                                <li>
                                    <a href="${pageContext.request.contextPath}/adminUrl/#">
                                        <div class="pull-left">
                                            <img src="${pageContext.request.contextPath}/adminUrl/img/26115.jpg" class="img-circle"
                                                alt="user image" />
                                        </div>
                                        <h4>
                                            Director Design Team

                                        </h4>
                                        <p>Why not buy a new awesome theme?</p>
                                        <small class="pull-right"><i class="fa fa-clock-o"></i> 2 hours</small>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/adminUrl/#">
                                        <div class="pull-left">
                                            <img src="${pageContext.request.contextPath}/adminUrl/img/avatar.png" class="img-circle"
                                                alt="user image" />
                                        </div>
                                        <h4>
                                            Developers

                                        </h4>
                                        <p>Why not buy a new awesome theme?</p>
                                        <small class="pull-right"><i class="fa fa-clock-o"></i> Today</small>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/adminUrl/#">
                                        <div class="pull-left">
                                            <img src="${pageContext.request.contextPath}/adminUrl/img/26115.jpg" class="img-circle"
                                                alt="user image" />
                                        </div>
                                        <h4>
                                            Sales Department

                                        </h4>
                                        <p>Why not buy a new awesome theme?</p>
                                        <small class="pull-right"><i class="fa fa-clock-o"></i> Yesterday</small>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/adminUrl/#">
                                        <div class="pull-left">
                                            <img src="${pageContext.request.contextPath}/adminUrl/img/avatar.png" class="img-circle"
                                                alt="user image" />
                                        </div>
                                        <h4>
                                            Reviewers

                                        </h4>
                                        <p>Why not buy a new awesome theme?</p>
                                        <small class="pull-right"><i class="fa fa-clock-o"></i> 2 days</small>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="footer"><a href="${pageContext.request.contextPath}/adminUrl/#">See All Messages</a></li>
                    </ul>
                </li> --%>
                <%-- <li class="dropdown tasks-menu">
                    <a href="${pageContext.request.contextPath}/adminUrl/#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-tasks"></i>
                        <span class="label label-danger">9</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">You have 9 tasks</li>
                        <li>
                            <!-- inner menu: contains the actual data -->
                            <ul class="menu">
                                <li>
                                    <!-- Task item -->
                                    <a href="${pageContext.request.contextPath}/adminUrl/#">
                                        <h3>
                                            Design some buttons
                                            <small class="pull-right">20%</small>
                                        </h3>
                                        <div class="progress progress-striped xs">
                                            <div class="progress-bar progress-bar-success" style="width: 20%" role="progressbar"
                                                aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                <span class="sr-only">20% Complete</span>
                                            </div>
                                        </div>
                                    </a>
                                </li><!-- end task item -->
                                <li>
                                    <!-- Task item -->
                                    <a href="${pageContext.request.contextPath}/adminUrl/#">
                                        <h3>
                                            Create a nice theme
                                            <small class="pull-right">40%</small>
                                        </h3>
                                        <div class="progress progress-striped xs">
                                            <div class="progress-bar progress-bar-danger" style="width: 40%" role="progressbar"
                                                aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                <span class="sr-only">40% Complete</span>
                                            </div>
                                        </div>
                                    </a>
                                </li><!-- end task item -->
                                <li>
                                    <!-- Task item -->
                                    <a href="${pageContext.request.contextPath}/adminUrl/#">
                                        <h3>
                                            Some task I need to do
                                            <small class="pull-right">60%</small>
                                        </h3>
                                        <div class="progress progress-striped xs">
                                            <div class="progress-bar progress-bar-info" style="width: 60%" role="progressbar"
                                                aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                <span class="sr-only">60% Complete</span>
                                            </div>
                                        </div>
                                    </a>
                                </li><!-- end task item -->
                                <li>
                                    <!-- Task item -->
                                    <a href="${pageContext.request.contextPath}/adminUrl/#">
                                        <h3>
                                            Make beautiful transitions
                                            <small class="pull-right">80%</small>
                                        </h3>
                                        <div class="progress progress-striped xs">
                                            <div class="progress-bar progress-bar-warning" style="width: 80%" role="progressbar"
                                                aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                <span class="sr-only">80% Complete</span>
                                            </div>
                                        </div>
                                    </a>
                                </li><!-- end task item -->
                            </ul>
                        </li>
                        <li class="footer">
                            <a href="${pageContext.request.contextPath}/adminUrl/#">View all tasks</a>
                        </li>
                    </ul>
                </li> --%>
                <!-- User Account: style can be found in dropdown.less -->
                <li class="dropdown user user-menu">
                    <a href="${pageContext.request.contextPath}/adminUrl/#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-user"></i>
                        <span>${pageContext.request.userPrincipal.name} <i class="caret"></i></span>
                    </a>
                    <ul class="dropdown-menu dropdown-custom dropdown-menu-right">
                        <li class="dropdown-header text-center">Account</li>

                        <%-- <li>
                            <a href="${pageContext.request.contextPath}/adminUrl/#">
                                <i class="fa fa-clock-o fa-fw pull-right"></i>
                                <span class="badge badge-success pull-right">10</span> Updates</a>
                            <a href="${pageContext.request.contextPath}/adminUrl/#">
                                <i class="fa fa-envelope-o fa-fw pull-right"></i>
                                <span class="badge badge-danger pull-right">5</span> Messages</a>
                            <a href="${pageContext.request.contextPath}/adminUrl/#"><i class="fa fa-magnet fa-fw pull-right"></i>
                                <span class="badge badge-info pull-right">3</span> Subscriptions</a>
                            <a href="${pageContext.request.contextPath}/adminUrl/#"><i class="fa fa-question fa-fw pull-right"></i>
                                <span class="badge pull-right">11</span> FAQ</a>
                        </li> --%>

                        <li class="divider"></li>

                        <li>
                            <a href="${pageContext.request.contextPath}/profile">
                                <i class="fa fa-user fa-fw pull-right"></i>
                                Profile
                            </a>
                            <%-- <a data-toggle="modal" href="${pageContext.request.contextPath}/adminUrl/#modal-user-settings">
                                <i class="fa fa-cog fa-fw pull-right"></i>
                                Settings
                            </a> --%>
                        </li>

                        <li class="divider"></li>

                        <li>
                            <a href="${pageContext.request.contextPath}/logout"><i class="fa fa-ban fa-fw pull-right"></i>
                                Logout</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</header>