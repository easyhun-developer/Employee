<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko" data-ng-app="employeeApp">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">

<%@ include file="/WEB-INF/view/common.jspf" %>

<title>bootstrap.jsp</title>
<style type="text/css">
	img {
		width: 100%;
		height: 100px;
	}
</style>
<script type="text/javascript">
	var app = angular.module('employeeApp', []);
	app.controller('examController',function($scope){
	});
</script>
</head>
<body data-ng-controller="examController">
<div class="container">
	<div class="row">
		<div class="col-sm-6">
			<img alt="xxx" src="http://www.placehold.it/100x100/ff0000/0000ff?text=50%">
		</div>
		<div class="col-sm-6">
			<img alt="xxx" src="http://www.placehold.it/100x100/ff00ff/0000ff?text=50%">
		</div>	
	</div>
	<div class="row">
		<div class="col-sm-12">
			<img alt="xxx" src="http://www.placehold.it/100x100/00ff00/0000ff?text=100%">
		</div>
	</div>
</div>
<div class="container-fluid">
	<div class="row">
		<div class="col-sm-6">
			<img alt="xxx" src="http://www.placehold.it/100x100/ff0000/0000ff?text=50%">
		</div>
		<div class="col-sm-6">
			<img alt="xxx" src="http://www.placehold.it/100x100/ff00ff/0000ff?text=50%">
		</div>	
	</div>
	<div class="row">
		<div class="col-sm-12">
			<img alt="xxx" src="http://www.placehold.it/100x100/00ff00/0000ff?text=100%">
		</div>
	</div>
</div>
</body>
</html>