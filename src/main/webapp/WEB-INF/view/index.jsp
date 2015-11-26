<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko" >
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<title>index.jsp</title>

<%@ include file="/WEB-INF/view/common.jspf" %>

<style type="text/css">

	.title_animation {
		animation : blink 2s infinite;
	}
	
	@keyframes blink {
		from {
			background-color : black;
			opacity : 0.0;
		}
		to {
			background-color : red;
			opacity : 1.0;
		}
	}
	
</style>

<script type="text/javascript">
$(document).ready(function() {
	$('li > a').click(function() {
		
		$('ul > li').removeClass('active');
		
		var str = $(this).text();
		$('#result').text(str);
		
		$(this).parent().addClass('active');
		
	});
});

</script>
</head>
<body>
<h1 class="title_animation">Employee</h1>

<ul class="pagination">
	<li><a href="#">Prev</a></li>
	<li><a href="#">1</a></li>
	<li class="active"><a href="#">2</a></li>
	<li><a href="#">3</a></li>
	<li><a href="#">4</a></li>
	<li><a href="#">5</a></li>
	<li><a href="#">6</a></li>
	<li><a href="#">7</a></li>
	<li><a href="#">8</a></li>
	<li><a href="#">9</a></li>
	<li><a href="#">10</a></li>
	<li><a href="#">Next</a></li>
</ul>
<div id="result"></div>


</body>
</html>