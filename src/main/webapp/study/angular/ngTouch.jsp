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
<title>ngTouch.jsp</title>

<style type="text/css">
.swipe-box {
	height: 200px;
	background-color: red;
	border: 1px solid black;
}
</style>

<style type="text/css">
.swipe-bat {
	height: 200px;
	background-color:red;
	border: 1px solid black;
}
</style>

<script type="text/javascript">
	var deps = ['ngRoute',
	            'ngAnimate',
	            'ngTouch',
	            'angular-loading-bar'
	            ];

	var app = angular.module("employeeApp", deps);
	
	app.controller("mainController", function($scope, $http) {
		console.log("mainController...");
		
		$scope.swipeLeft = function(e) {
			console.log("swipeLeft()...");
			console.dir(e);
			
			$(e.target).css('border-radius', '0px');
			
			$scope.msg = "ng-swipe-left fired...";
		};
		
		$scope.swipeRight = function(e) {
			console.log("swipeRight()...");
			console.dir(e);
			
			$(e.target).css('border-radius', '50px');
			
			$scope.msg = "ng-swipe-right fired...";
		};
		
		/* 
		*
		*/
		
		$scope.imgURL = "http://www.placehold.it/400x400";
		
		$scope.imgSwipeLeft = function(e) {
			console.log("imgSwipeLeft()...");
			console.dir(e);
			
			$(e.target).css('border-radius', '0px');
			
			$scope.imgmsg = "ng-swipe-left fired...";
			$scope.imgURL = "http://www.placehold.it/400x400/ff0000/0000ff?text=SwipeLeft...";
		};
		
		$scope.imgSwipeRight = function(e) {
			console.log("imgSwipeRight()...");
			console.dir(e);
			
			$(e.target).css('border-radius', '50px');
			
			$scope.imgmsg = "ng-swipe-right fired...";
			$scope.imgURL = "http://www.placehold.it/400x400/0000ff/ff0000?text=SwipeRight...";
		};
		
		$scope.prevent = function(e) {
			e.preventDefault;
		}
		
		/*
		*
		*/

			
	});
</script>
</head>
<body data-ng-controller="mainController" class="container">
<div>
	<div data-ng-swipe-left="swipeLeft($event)"
		 data-ng-swipe-right="swipeRight($event)"
		 class="swipe-box">
	</div>
	<hr>
	<p>{{msg}}</p>
	<hr>
	<img data-ng-swipe-left="imgSwipeLeft($event)"
		 data-ng-swipe-right="imgSwipeRight($event)"
		 ondragstart="return false"
		 draggable="false" class="img-responsive" alt="{{imgURL}}" data-ng-src="{{imgURL}}">
	<p>{{imgmsg}}</p>
	
</div>
</body>
</html>