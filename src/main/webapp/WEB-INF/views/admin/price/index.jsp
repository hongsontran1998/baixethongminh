<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                Sửa giá thành
            </header>
            <ul class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/admincp"><i class="fa fa-home"></i> Home</a></li>
                <li><a href="${pageContext.request.contextPath}/admin/price/index"> Price</a></li>
            </ul>
            <c:if test="${not empty msg}">
            	<div style="padding: 15px 11px;margin-left: 15px;background: #f0f3f4;margin-right: 15px;">
            		${msg}
            	</div>
            </c:if>
            
            <div class="panel-body">
                <form action="" method="post" role="form">
                    
                    <div class="form-group">
                        <label for=price>Price</label>
                        <input type="text" class="form-control" value="${price}" name="price" id="price" placeholder="Price">
                    </div>
                  	<div class="form-group">
                        <label for="giamgia">Giảm giá</label>
                        <select name="giamgia" id="giamgia" class="form-control m-b-10">
                        	<c:forEach begin="0" end="100" step="10" var="i">
                            	<option ${i == giamgia ? 'selected' : ''} value="${i}">${i}%</option>
                        	</c:forEach>
                         </select>
                         <form:errors path="user.enable"></form:errors>
                    </div>
                    <button type="submit" class="btn btn-info">Submit</button>
                </form>
            </div>
        </section>
    </div>
</div>
<!--row1-->
