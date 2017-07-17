<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE >
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AngularJS test2</title>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular.min.js"></script>
	<script type="text/javascript" src = "js/controller.js"></script>
	<script type="text/javascript" src = "js/controller2.js"></script>
</head>
<body>
	<div class="well span6" ng-controller="PersonCtrl">
		<label>Name:</label>
		<input type="text" ng-model="name" placeholder="Enter a name here">
		<br>
		<label>Age:</label>
		<input type="text" ng-model="age" placeholder="Enter a number here">
		<hr>
		<h1>{{ name }}</h1>
		<h2>{{ age }}</h2>
	</div>
	<div class="well span6" ng-controller="myCtrl">
		<label>phone:</label>
		<input type="text" ng-model="phone" placeholder="Enter a phone here">
		<hr>
		<h2>{{ phone }}</h2>
	</div>
</body>
</html>