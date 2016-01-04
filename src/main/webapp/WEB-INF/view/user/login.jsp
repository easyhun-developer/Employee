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
<title>login.jsp</title>

<c:url var="LOGIN_URL" value="/user/login"/>
<c:url var="REDIRECT_URL" value="/city/main.html"/>

<script type="text/javascript">
	var deps = ['ngRoute',
	            'ngAnimate',
	            'ngTouch',
	            'angular-loading-bar'
	            ];

	var app = angular.module("employeeApp", deps);
	
	app.controller("mainController", function($scope, $http) {
		console.log("mainController...");
		
		$scope.$watch("loginstatus", function() {
			console.log("watch...");
			if($scope.loginstatus == true){
				location.href = '<c:url value="/user/logout"/>';
			};
		});
		
// 		var ajax = $http.get("<c:url value="/user/logincheck"/>");
// 		ajax.then(function(value) {
// 			var loginstatus = value.data.login;
			
// 			console.log("loginstatus = " + loginstatus);
// 			alert("loginstatus = " + loginstatus);
// 			if(loginstatus == true){
// 				location.href = "/Employee/user/logout";
// 		};
// 	});
		
		$scope.login = {};
		
		$scope.submit = function() {
			alert("submit...");
			console.log("submit()...");
			
			var ajax = $http.post("${LOGIN_URL}",{
				email : $scope.login.email,
				password : $scope.login.password
			});
			
			ajax.then(function(value) {
				console.dir(value);
				location.href = "${REDIRECT_URL}";
			}, function(reason) {
				console.dir(reason);
				$scope.error = reason.data;
			});
		};
		
	});
	
</script>
</head>
<body data-ng-controller="mainController" class="container">
<div class="row">
    <div class="col-md-4 col-md-offset-4">
        <div class="login-panel panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Please Sign In</h3>
                <pre>{{login}}</pre>
                <div>{{error.message}}</div>
            </div>
            <div class="panel-body">
                <form name="loginForm" novalidate="novalidate" data-ng-submit="submit()">
                    <fieldset>
                        <div class="form-group">
                            <input class="form-control" 
                            	   placeholder="E-mail" 
                            	   name="email" 
                            	   type="email" 
                            	   autofocus
                            	   required="required"
                            	   data-ng-model="login.email"
                            	   >
                        	<div data-ng-show="loginForm.email.$dirty && loginForm.email.$invalid">
                        		<div data-ng-show="loginForm.email.$error.required">
                        			필수입력항목입니다.
                        		</div>
                        		<div data-ng-show="loginForm.email.$error.email">
                        			이메일형식이 아닙니다.
                        		</div>
                        	</div>
                        </div>
                        <div class="form-group">
                            <input class="form-control" 
                            	   placeholder="Password" 
                            	   name="password" 
                            	   type="password"
                            	   required="required"
                            	   data-ng-model="login.password"
                            	   >
                           	<div data-ng-show="loginForm.password.$dirty && loginForm.password.$invalid">
                        		<div data-ng-show="loginForm.password.$error.required">
                        			필수입력항목입니다.
                        		</div>
                        	</div>                      	   
                        </div>
                        <div class="checkbox">
                            <label>
                                <input name="remember" type="checkbox" value="Remember Me">Remember Me
                            </label>
                        </div>
                        <!-- Change this to a button or input when using this as a form -->
                        <button type="submit"
                        		class="btn btn-lg btn-success btn-block"
                        		data-ng-disabled="loginForm.$invalid">Login</button>
                    </fieldset>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>