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
<title>form.jsp</title>
<script type="text/javascript">
	var deps = ['ngRoute',
	            'ngAnimate',
	            'ngTouch',
	            'angular-loading-bar'
	            ];

	var app = angular.module("employeeApp", deps);
	
	app.controller("mainController", function($scope, $http) {
		console.log("mainController...");
		
		$scope.method="POST";
		$scope.data="data";
		$scope.error="error";
		
		function successCallback(response) {
			console.dir(response);
			$scope.data = response.data;
		}
		
		function errorCallback(response) {
			console.dir(response);
			$scope.error = response.data;
		}
		
		$scope.getCityAll = function() {
			var url = "/Employee/city";
			console.log("url = "+url);
			
			$scope.data = "";
			$scope.error = "";
			
			switch ($scope.method) {
			case "GET":
				alert("GET call...");
				var ajax = $http.get(url);
				ajax.then(successCallback,errorCallback);
				break;
			case "POST":
				alert("POST call...");
				var ajax = $http.post(url);
				ajax.then(successCallback,errorCallback);
				break;
			case "PUT":
				alert("PUT call...");
				var ajax = $http.put(url);
				ajax.then(successCallback,errorCallback);
				break;
			case "DELETE":
				alert("DELETE call...");
				var config = {
						method : "DELETE",
						url : url
				}
				var ajax = $http(config);
				ajax.then(successCallback,errorCallback);
				break;
			default:
				break;
			}
		}
	});

</script>
</head>
<body data-ng-controller="mainController" class="container">

<h1>{{method}}</h1>

<form class="form-inline" data-ng-submit="getCityAll()">
	<div class="form-group">
	<select data-ng-model="method" class="form-control">
		<option>GET</option>
		<option>POST</option>
		<option>PUT</option>
		<option>DELETE</option>
	</select>
	</div>
	<div class="form-group">
	<textarea rows="10" class="form-control">
		{{data}}
	</textarea>
	<textarea data-ng-model="error" rows="10" class="form-control">
	</textarea>
	</div>
	<input class="btn btn-info" type="submit" value="getCityAll()">
</form>
</body>
</html>