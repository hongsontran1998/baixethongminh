<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<div class="row" style="margin-bottom:5px;">
    <div class="col-md-3">
        <div class="sm-st clearfix">
            <span class="sm-st-icon st-blue"><i class="fa fa-dollar"></i></span>
            <div class="sm-st-info">
                <span>${currentUser.total}</span>
                VNĐ
            </div>
        </div>
    </div>
    <security:authorize access="hasRole('ROLE_ADMIN')">
	    <div class="col-md-3">
	        <div class="sm-st clearfix">
	            <span class="sm-st-icon st-green"><i class="fa fa-user"></i></span>
	            <div class="sm-st-info">
	                <span>${countUser}</span>
	                Total Users
	            </div>
	        </div>
	    </div>
	    <div class="col-md-3">
	        <div class="sm-st clearfix">
	            <span class="sm-st-icon st-red"><i class="fa fa-check-square-o"></i></span>
	            <div class="sm-st-info">
	                <span>3200</span>
	                Total Tasks
	            </div>
	        </div>
	    </div>
	    <div class="col-md-3">
	        <div class="sm-st clearfix">
	            <span class="sm-st-icon st-violet"><i class="fa fa-envelope-o"></i></span>
	            <div class="sm-st-info">
	                <span>2200</span>
	                Total Messages
	            </div>
	        </div>
	    </div>
    </security:authorize>


</div>

<!-- Main row -->
<div class="row">

    <div class="col-lg-4">

        <!--chat start-->
        <section class="panel">
            <header class="panel-heading">
                Notifications
            </header>
            <div class="panel-body" id="noti-box">

                <div class="alert alert-block alert-danger">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="fa fa-times"></i>
                    </button>
                    <strong>Oh snap!</strong> Change a few things up and try submitting again.
                </div>
                <div class="alert alert-success">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="fa fa-times"></i>
                    </button>
                    <strong>Well done!</strong> You successfully read this important alert message.
                </div>
                <div class="alert alert-info">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="fa fa-times"></i>
                    </button>
                    <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
                </div>
                <div class="alert alert-warning">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="fa fa-times"></i>
                    </button>
                    <strong>Warning!</strong> Best check yo self, you're not looking too good.
                </div>


                <div class="alert alert-block alert-danger">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="fa fa-times"></i>
                    </button>
                    <strong>Oh snap!</strong> Change a few things up and try submitting again.
                </div>
                <div class="alert alert-success">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="fa fa-times"></i>
                    </button>
                    <strong>Well done!</strong> You successfully read this important alert message.
                </div>
                <div class="alert alert-info">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="fa fa-times"></i>
                    </button>
                    <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
                </div>
                <div class="alert alert-warning">
                    <button data-dismiss="alert" class="close close-sm" type="button">
                        <i class="fa fa-times"></i>
                    </button>
                    <strong>Warning!</strong> Best check yo self, you're not looking too good.
                </div>
            </div>
        </section>
    </div>
</div>
