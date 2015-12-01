<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko">
<head>


</head>
<body class="container">
<div class="table-responsive">
		<ul class="pagination">
			<li><a href="" data-ng-click="prevClick(paging.firstPage-1)">Prev</a></li>
			<li data-ng-repeat="city in citys">
				<a href="" data-ng-click="pageClick(paging.firstPage + $index)">{{paging.firstPage + $index}}</a>			
			</li>
			<li><a href="" data-ng-click="nextClick(paging.lastPage+1)">Next</a></li>
		</ul>
		<table class="table table-striped table-hover">
			<thead>
				<th>No</th><th>ID</th><th>Name</th><th>CountryCode</th><th>District</th><th>Population</th>
			</thead>
			<tbody>
				<tr data-ng-repeat="city in citys">
					<td>{{$index + 1}}</td>
					<td><a href="#/detail">{{city.id}}</a></td>
					<td>{{city.name}}</td>
					<td>{{city.countryCode}}</td>
					<td>{{city.district}}</td>
					<td>{{city.population}}</td>
				</tr>
			</tbody>
		</table>
	</div>
<hr>
<div class="form-group">
	<textarea rows="20" class="form-control">
	{{citys}}
	{{paging}}
	</textarea>
</div>
</body>
</html>




