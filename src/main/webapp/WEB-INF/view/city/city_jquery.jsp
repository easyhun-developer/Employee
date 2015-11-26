<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">

<%@ include file="/WEB-INF/view/common.jspf" %>

<title>city.jsp</title>
<script type="text/javascript">

function getData() {
	$.getJSON('/Employee/city', function(response) {
		console.dir(response);
		var json = JSON.stringify(response, null, 4);
		$('#result').text(json);
	});
}

$(document).ready(function() {
	$('button:first').click(function() {
		getData();
	});
	$('button:last').click(function() {
		$('#result').text('');
	});
	
});
</script>

</head>
<body>
<h1>City List</h1>

<button class="btn btn-primary">GET</button>
<button class="btn btn-success">Clear</button>

<hr>
<textarea id="result" rows="50" cols="50"></textarea>

</body>
</html>