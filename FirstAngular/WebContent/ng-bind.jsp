<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ng-bind</title>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0-rc.2/angular.min.js"></script>
</head>
<body>
	<div class="well span6" style="margin-top: 20px;">
		<label>Name:</label> <input type="text" ng-model="name"
			placeholder="Enter a name here">
		<hr>
		<h1>
			Hello <span ng-bind="name || 'AngularJS'">AngularJS</span>!!
		</h1>
	</div>
</body>
</html>