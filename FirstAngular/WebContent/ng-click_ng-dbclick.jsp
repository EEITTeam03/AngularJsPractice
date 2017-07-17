<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>click and dbclick</title>
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular.min.js"></script>
<script type="text/javascript" src = "js/controller4.js"></script>
</head>
<body>
	<div class="well span6" style= "margin-top: 20px;" ng-controller="friendsCtrl">
		<h3>共有 {{ friends.length }} 位朋友</h3>
				
		<div class="alert alert-info" ng-repeat="friend in friends">
			<button type="button" class="close" ng-click="remove($index);">&times;</button>
			<div ng-hide="friend.editing" ng-dblclick="friend.editing=true;">
			{{ friend.name }} <span class="badge badge-important">{{friend.age }} 歲</span>
			</div>
			<div ng-show="friend.editing">
			<input type="text" class="input-small" ng-model="friend.name">
			<input type="text" class="input-small" ng-model="friend.age">
			<button class="btn" ng-click="friend.editing=false;">Update</button>
			</div>
		</div>

		<label class="control-label" for="name">Name:</label>
		<input type="text" id="name" placeholder="Name" ng-model="pName"> 
		<label class="control-label" for="age">Age:</label> 
		<input type="number" id="age" placeholder="age" ng-model="pAge"> <br>
		<button class="btn" ng-click="add()">Add</button>
	</div>
</body>
</html>