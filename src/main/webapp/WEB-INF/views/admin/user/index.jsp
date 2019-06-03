<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="row">
    <div class="col-xs-12">
        <div class="panel">
            <header class="panel-heading">
                Quản lí người dùng.
            </header>
            <div class="panel-body table-responsive">
                <div class="row">
				    <div class="col-md-12">
				        <ul class="breadcrumb">
				            <li><a href="${pageContext.request.contextPath}/admincp"><i class="fa fa-home"></i> Home</a></li>
				            <li class="active">User</li>
				        </ul>
				    </div>
				</div>
                <div class="row">
                    <div class="col-sm-3">
				    	<a href="${pageContext.request.contextPath}/admin/user/add" class="btn btn-sm btn-success">Thêm</a>
                    </div>
                    <div class="col-sm-3">
		                <div class="box-tools m-b-15 pull-left">
		                    <div class="input-group">
		                        <input type="text" name="table_search" class="form-control input-sm pull-right" style="width: 150px;"
		                            placeholder="Search" />
		                        <div class="input-group-btn">
		                            <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
		                        </div>
		                    </div>
		                </div>
                    </div>
                    <div class="col-sm-6">
		                <div class="box-tools">
		                    <ul class="pagination pagination-sm m-b-10 m-t-10 pull-right">
		                        <li class="${page == 1 ? 'disabled' : ''}">
		                            <a class="" href="${pageContext.request.contextPath}/admin/user/index?page=${page -  1}">«</a>
		                        </li>
		                        <c:forEach begin="1" end="${numberOfPages}" step="1" varStatus="loop">
		                            <li class="${page == loop.count ? 'active' : ''}">
		                                <a href="${pageContext.request.contextPath}/admin/user/index?page=${loop.count}">${loop.count}</a>
		                            </li>
		                        </c:forEach>
		                        <li class="${page == numberOfPages ? 'disabled' : ''}">
		                            <a href="${pageContext.request.contextPath}/admin/user/index?page=${page +  1}">»</a>
		                        </li>
		                    </ul>
		                </div>
                    </div>
                </div>
                <table class="table table-hover">
                    <tr>
                        <th>ID</th>
                        <th>Username</th>
                        <th>Fullname</th>
                        <th>Status</th>
                        <th>CardID</th>
                        <th>Total</th>
                        <th>Role</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach items="${users}" var="user">
	                    <tr>
	                        <td>${user.id}</td>
	                        <td>${user.username}</td>
	                        <td>${user.fullname}</td>
	                        <td>
	                           <span class="label ${user.enable == 1 ? 'label-success' : 'label-danger'}">Active</span>
	                        </td>
	                        <td>${user.cardId}</td>
	                        <td>VND ${user.total}</td>
	                        <td>${user.role.name}</td>
	                        <td>${user.email eq '' ? 'update' : user.email}</td>
	                        <td>${user.telephone eq '' ? 'update' : user.telephone}</td>
	                        <td>
	                           <a href="${pageContext.request.contextPath}/admin/user/edit/${user.id}" class="btn btn-sm btn-primary">Edit</a>
	                           <c:if test="${user.username ne 'admin'}">
	                               <a onclick="confirm('bạn có muốn xóa ${user.username}')" href="${pageContext.request.contextPath}/admin/user/delete/${user.id}" class="btn btn-sm btn-danger">Delete</a>
	                           </c:if>
                          </td>
	                    </tr>
                    </c:forEach>
                </table>
            </div><!-- /.box-body -->
        </div><!-- /.box -->
    </div>
</div>
