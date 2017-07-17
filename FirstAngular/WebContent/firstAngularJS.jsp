<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AngularJS test1</title>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular.min.js"></script>
</head>
<body>
	<div class="well span6">
		<label>Name:</label>
		<input type="text" ng-model="msg" placeholder="你好~"><br>
		<input type="text" ng-model="name" placeholder="Enter a name here">
		<hr>
		<h1>{{msg}} {{ name || "AngularJS" }}!!</h1>
	</div>
</body>
</html>