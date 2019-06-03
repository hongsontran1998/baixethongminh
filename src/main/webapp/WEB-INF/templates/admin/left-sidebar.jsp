<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!-- Left side column. contains the logo and sidebar -->
<aside class="left-side sidebar-offcanvas">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="${pageContext.request.contextPath}/adminUrl/img/26115.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
                <p>hello, ${pageContext.request.userPrincipal.name}</p>

                <a href="${pageContext.request.contextPath}/adminUrl/#"><i class="fa fa-circle text-success"></i>
                    Online</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search..." />
                <span class="input-group-btn">
                    <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="${admincpLinkActive ? 'active' : ''}">
                <a href="${pageContext.request.contextPath}/admincp">
                    <i class="fa fa-dashboard"></i> <span>Home</span>
                </a>
            </li>
            <security:authorize access="hasRole('ROLE_ADMIN')">
		            <li class="${userLinkActive ? 'active' : ''}">
		                <a href="${pageContext.request.contextPath}/admin/user/index">
		                    <i class="fa fa-user"></i> <span>Quản lí người dùng</span>
		                </a>
		            </li>
		            <li class="${priceLinkActive ? 'active' : ''}">
		                <a href="${pageContext.request.contextPath}/admin/price/index">
		                    <i class="fa fa-dollar"></i> <span>Quản lí giá</span>
		                </a>
		            </li>
            </security:authorize>

        </ul>
    </section>
    <!-- /.sidebar -->
</aside>