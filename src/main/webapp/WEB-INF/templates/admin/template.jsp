<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tiles:importAttribute name="javascripts"/>
<tiles:importAttribute name="stylesheets"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><tiles:getAsString name="title" ignore="true"/></title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <meta name="description" content="Developed By M Abdur Rokib Promy">
    <meta name="keywords" content="Admin, Bootstrap 3, Template, Theme, Responsive">
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/authUrl/images/icons/favicon.png"/>
    <c:forEach var="css" items="${stylesheets}">
        <link rel="stylesheet" type="text/css" href="<c:url value="${css}"/>">
    </c:forEach>
    <style type="text/css">
	    th:first-child {
	      width: 5% !important;
	    }
	    th:last-child {
	      width: 12% !important;
	    }
	    th {
	      width: 8%;  
	    }
    </style>
</head>
<body class="skin-black">
    <tiles:insertAttribute name="header" />
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <tiles:insertAttribute name="left-sidebar" />
        <aside class="right-side">
            <section class="content">
                <tiles:insertAttribute name="content" />
            </section>
            <tiles:insertAttribute name="footer" />
        </aside>
    </div>
	<c:forEach var="script" items="${javascripts}">
		<script src="<c:url value="${script}"/>"></script>
	</c:forEach>
</body>
</html>