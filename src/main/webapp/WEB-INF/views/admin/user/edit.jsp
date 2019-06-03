<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                Cập nhật người dùng
            </header>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="breadcrumb">
                            <li><a href="${pageContext.request.contextPath}/admincp"><i class="fa fa-home"></i> Home</a></li>
                            <li><a href="${pageContext.request.contextPath}/admin/user/index"> User</a></li>
                            <li class="active">User</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="panel-body">
                <form action="" method="post" role="form">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" class="form-control" value="${user.username}" name="username" id="username" placeholder="Username">
                        <form:errors path="user.username"></form:errors>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" value="" name="password" id="password" placeholder="Password">
                        <div>Giữ nguyên nếu không thay đổi password</div>
                    </div>
                    <div class="form-group">
                        <label for="fullname">Fullname</label>
                        <input type="text" class="form-control" value="${user.fullname}" name="fullname" id="fullname" placeholder="Fullname">
                        <form:errors path="user.fullname"></form:errors>
                    </div>
                    <div class="form-group">
                        <label for="cardId">CardId</label>
                        <input type="text" class="form-control" value="${user.cardId}" name="cardId" id="cardId" placeholder="CardId">
                        <form:errors path="user.cardId"></form:errors>
                    </div>
                   <div class="form-group">
                        <label for="enable">Enable</label>
                        <select name="enable" id="enable" class="form-control m-b-10">
                             <option ${user.enable == 1 ? 'selected' : ''} value="1">Active</option>
                             <option ${user.enable == 0 ? 'selected' : ''} value="0">Deactive</option>
                         </select>
                         <form:errors path="user.enable"></form:errors>
                    </div>
                   <div class="form-group">
                        <label for="roleId">Role</label>
                        <select name="roleId" id="roleId" class="form-control m-b-10">
                             <c:forEach items="${roles}" var="role">
                                <option ${user.role.id == role.id ? 'selected' : ''} value="${role.id}">${role.name}</option>
                             </c:forEach>
                         </select>
                         <form:errors path="user.role"></form:errors>
                    </div>
                    <div class="form-group">
                        <label for="total">Total</label>
                        <input type="number" class="form-control"  value="${user.total}" name="total" id="total" placeholder="Total">
                        <form:errors path="user.total"></form:errors>
                    </div>
                  
                    <button type="submit" class="btn btn-info">Submit</button>
                </form>
            </div>
        </section>
    </div>
</div>
<!--row1-->
