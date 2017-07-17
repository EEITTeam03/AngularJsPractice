<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ng-repeat2</title>
<style type="text/css">
	.friend-first-true {
		color: red;
	}
	.friend-middle-true {
	color: blue;
	}
	.friend-last-true {
		color: green;
	}
	.friend-even-true {
	color: blue;
	}
	.friend-odd-true {
		color: green;
	}
	
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular.min.js"></script>
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
<script type="text/javascript" src="js/controller4.js"></script>
</head>
<body>
	<div class="well span6" style="margin-top: 20px;"
		ng-controller="friendsCtrl">
<!-- 		<label>Search:</label> <input type="text" ng-model="search"> -->
<!-- 		<hr> -->
<!-- 		<ul> -->
<!-- 			<li ng-repeat="friend in friends | filter:search"> -->
<!-- 				{{friend.name}}({{ friend.age }}) <span class="friend-first-{{$first}}" ng-show="$first">[第一筆]</span> -->
<!-- 			<span class="friend-middle-{{$middle}}" ng-show="$middle">[中間的]</span> -->
<!-- 			<span class="friend-last-{{$last}}" ng-show="$last">[最後一筆]</span> -->
<!-- 				<span class = "friend-even-{{$even}}" ng-show="$even">[偶數筆]</span> -->
<!-- 				<span class = "friend-odd-{{$odd}}" ng-show="$odd">[奇數筆]</span> -->
<!-- 			</li> -->
<!-- 		</ul> -->
		<h2 ng-repeat-start="friend in friends" class ="friend-odd-{{$odd}}">{{ friend.name }}</h2>
		<div class="alert alert-info">
			{{ friend.name }} <span class="badge badge-important">{{friend.age }} 歲</span>
		</div>
		<div class="progress progress-striped active" ng-repeat-end>
			<div class="bar" style="width: {{ friend.age }}%;"></div>
		</div>
	</div>
</body>
</html>