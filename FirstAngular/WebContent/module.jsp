<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="CalApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>module</title>
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular.min.js"></script>
<script type="text/javascript" src = "js/controller6.js"></script>
</head>
<body>
	<form class="span5 form-inline" style="margin-top: 20px;"
		ng-controller="CalCtrl">
		<div class="alert alert-info">
			<input type="number" class="input-small" ng-model="num1"> <span>*</span>
			<input type="number" class="input-small" ng-model="num2" disabled>
			<span>=</span> {{ num1 * num2}}
		</div>
	</form>
	
	<form class="span5 form-inline" style="margin-top: 20px;"
		ng-controller="CalCtrl2">
		<div class="alert alert-info">
			<input type="number" class="input-small" ng-model="num3"> <span>*</span>
			<input type="number" class="input-small" ng-model="num4" disabled>
			<span>=</span> {{ num3 * num4}}
		</div>
	</form>
</body>
</html>