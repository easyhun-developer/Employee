<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>append.jsp</title>
</head>
<body class="container">
<div class="row">
	<div class="col-sm-6 col-sm-offset-3">
		<div class="panel panel-default">
			<div class="panel-heading">회원가입</div>
			<div class="panel-body">
				<form name="memberForm" novalidate="novalidate"
					data-ng-submit="submit()">
					<!-- email -->
					<div class="form-group">
						<label for="email">email : </label> 
						<input id="email" 
								name="email"
								type="email" 
								class="form-control" 
								required="required"
								data-ng-model="member.email" 
								/>
						<!-- 필수항목으로 적지않으면 true상태였다가 적으면 사라진다 -->
						<div data-ng-show="memberForm.email.$dirty">
							<div class="alert alert-warning" data-ng-show="memberForm.email.$error.required">필수 입력 항목입니다.</div>
							<div data-ng-show="loginForm.email.$error.email">이메일형식이 아닙니다.</div>
						</div>
					</div>
					<!-- Name -->
					<div class="form-group">
						<label for="name">Name : </label> 
						<input id="name" 
								name="name"
								type="text" 
								class="form-control" 
								required="required"
								data-ng-model="member.name" 
								data-ng-maxlength="35" />
						<div data-ng-show="memberForm.name.$dirty">
							<div class="alert alert-warning" data-ng-show="memberForm.name.$error.required">필수 입력 항목입니다.</div>
							<div class="alert alert-warning" data-ng-show="memberForm.name.$error.maxlength">35자리까지	입력가능합니다.</div>
						</div>
					</div>
					<!-- Password -->
					<div class="form-group">
					<label for="password">password : </label> 
						<input  class="form-control"
								name="password" 
								type="password" 
								required="required"
								data-ng-model="member.password" 
								/>
                           	<div data-ng-show="memberForm.password.$dirty && memberForm.password.$invalid">
                        		<div data-ng-show="memberForm.password.$error.required">
                        			필수입력항목입니다.
                        		</div>
                        	</div> 
					</div>
					<!-- registerDate -->
					<div class="form-group">
						<label for="registerDate">registerDate : </label> 
						<input id="registerDate"
								name="registerDate" 
								type="text" 
								class="form-control"
								required="required" 
								data-ng-model="member.registerDate"
								/>
						<div data-ng-show="memberForm.registerDate.$dirty">
							<div class="alert alert-warning" data-ng-show="memberForm.registerDate.$error.required">
							필수 입력 항목입니다.</div>
						</div>
					</div>

					<!-- Submit -->
					<div class="form-group">
						<input type="submit" value="확인" class="btn btn-primary" data-ng-disabled="memberForm.$invalid" />
						<!-- form-control을 btn앞에 넣을경우 전체공간차지를한다 -->
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>