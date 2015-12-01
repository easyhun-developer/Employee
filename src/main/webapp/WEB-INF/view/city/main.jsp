<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko" data-ng-app="employeeApp">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<%@ include file="/WEB-INF/view/common.jspf" %>
<title>main.jsp</title>

<!-- URL Resolve -->
<c:url var="URL_GET_LIST" value="/city/"/>
<c:url var="URL_GET_PAGE_BASE" value="/city/page/"/>
<c:url var="URL_GET_ITEM_BASE" value="/city/"/>
<script type="text/javascript">

	var urls = {
			GET_LIST : 			"${URL_GET_LIST}",
			GET_PAGE_BASE : 	"${URL_GET_PAGE_BASE}",
			GET_ITEM_BASE :		"${URL_GET_ITEM_BASE}"
	};

	var deps = ['ngRoute',
	            'ngAnimate',
	            'ngTouch',
	            'angular-loading-bar'
	            ];

	var app = angular.module("employeeApp", deps);
	
	app.constant("URL",urls);
	
	app.controller("mainController", function($scope, $http,$location) {
		console.log("mainController...");
		$location.path("/list");
	});
	
</script>

<c:url var="listController" value="/js/city/listController.js"></c:url>
<c:url var="detailController" value="/js/city/detailController.js"></c:url>


<script type="text/javascript" src="${listController}"></script>
<script type="text/javascript" src="${detailController}"></script>

</head>
<body data-ng-controller="mainController" class="container">
<h1>{{title}}</h1>
<div data-ng-view>

</div>
</body>
</html>