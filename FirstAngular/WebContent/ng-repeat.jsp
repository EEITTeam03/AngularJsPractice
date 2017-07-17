<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ng-repeat</title>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular.min.js"></script>
	<script type="text/javascript" src="js/controller4.js"></script>
</head>
<body>
	<div class="well span6" style="margin-top:20px;" ng-controller="friendsCtrl">
		<label>清單項目數:</label>
			<h5>{{friends.length}}</h5>
			<hr>
		<label>Search:</label>
			<input type="text" ng-model="search">
			<hr>
		<ul>
			<li ng-repeat="friend in friends | filter:search">{{ friend.name }}({{ friend.age }})</li>
		</ul>
	</div>
</body>
</html>