<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>filters1</title>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular.min.js"></script>
	<script type="text/javascript" src="js/controller5.js"></script>
</head>
<body>
	<div class="span6" ng-controller="FilterCtrl">
		<div class="alert alert-info">
			<input type="number" ng-model="num">
<!-- 			number 可以將字串轉成數字，並將數字格式化為三位一撇，同時也能限制小數以下的位數。預設是小數以下 3 位。 -->
			<pre>{{ num | number:5}}</pre>
		</div>
		<div class="alert alert-info">
			<input type="number" ng-model="money">
			<pre>{{ money | currency:'NTD ' }}</pre>
		</div>
		<div class="alert alert-info">
			<input type="date" ng-model="birth">
			<pre>{{ birth | date:'yyyy 年 MM 月 dd 日' }}</pre>
		</div>
		<div class="alert alert-info">
			<pre>{{ obj | json }}</pre>
		</div>
		<div class="alert alert-info">
			<input type="text" ng-model="lower">
			<pre>{{ lower | lowercase }}</pre>
		</div>
				<div class="alert alert-info">
			<input type="text" ng-model="upper">
			<pre>{{ upper | uppercase }}</pre>
		</div>
	</div>
</body>
</html>