<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ngInit</title>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular.min.js"></script>
</head>
<body>
	<div class="alert alert-info" ng-init="greeting='Hi,';name='男丁';">
		<label>Messgae:</label> <input type="text" ng-model="greeting"
			placeholder="Enter a message here"> <br> <label>Name:</label>
		<input type="text" ng-model="name" placeholder="Enter a name here">
		<hr>
		<h1>{{ greeting || "Hello" }} {{ name || "AngularJS" }}!!</h1>
	</div>
	<div class="alert alert-success">
		<label>全選/全取消: <input type="checkbox" ng-model="selectAll"></label>
		<input type="checkbox" ng-checked="selectAll"> <input
			type="checkbox" ng-checked="selectAll"> <input
			type="checkbox" ng-checked="selectAll"> <input
			type="checkbox" ng-checked="selectAll"> <input
			type="checkbox" ng-checked="selectAll">
	</div>
	<div class="alert">
		<label>我同意<input type="checkbox" ng-model="agree"></label> <input
			type="text" ng-disabled="!agree" value="abgne.tw">
		<button class="btn btn-primary" ng-disabled="!agree">開始下載</button>
	</div>
	<div class="alert alert-error">
		<label>唯讀<input type="checkbox" ng-model="readonly"></label> <input
			type="text" ng-readonly="readonly" value="abgne.tw">
		<textarea ng-readonly="readonly"></textarea>
	</div>
</body>
</html>