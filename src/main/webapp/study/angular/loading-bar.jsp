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
<title>ngAnimate.jsp</title>

<c:url var="URL_GET_LIST" value="/city/"/>
<c:url var="URL_GET_PAGE_BASE" value="/city/page/"/>
<script type="text/javascript">
	var deps = ['ngRoute',
	            'ngAnimate',
	            'ngTouch',
	            'angular-loading-bar'
	            ];

	var app = angular.module("employeeApp", deps);
	
	app.controller("mainController", function($scope, $http) {
		console.log("mainController...");
		
//		var url = "${URL_GET_PAGE_BASE}"+10;
		var url = "${URL_GET_LIST}"
		
		var ajax = $http.get(url);
		
		ajax.then(success,error);
		
		function success(response) {
			console.log("success...");
			console.dir(response);
			$scope.citys = response.data.citys;
		}
		
		function error(reason) {
			console.log("error...");
			console.dir(reason);
		}
	});
	
</script>
<style type="text/css">
	.myFade.ng-enter {
		opacity : 0.0;
		transform : rotate(-180deg);
/* 		transform : scale(0,0); */
		transition : 2s ease-out;
	}
	.myFade.ng-enter-active {
	opacity : 1.0;
	transform : rotate(0deg)
/* 	transform : scale(1,1); */
	}
</style>
</head>
<body data-ng-controller="mainController" class="container">
	<ul class="list-group">
		<li class="list-group-item myFade" data-ng-repeat="city in citys">
			<button class="btn btn-default">{{city.id}}</button> 
			<button class="btn btn-success">{{city.name}}</button>
			<button class="btn btn-info">{{city.district}}</button>
		</li>
	</ul>
	
	<div class="panel-group">
	<div class="panel panel-primary" data-ng-repeat="city in citys">
		<div class="panel-heading">{{city.name}}</div>
		<div class="panel-body">{{city.id}} {{city.district}} {{city.population}}</div>
		<div class="panel-footer">{{city.countryCode}}</div>	
	</div>
	</div>
</body>
</html>