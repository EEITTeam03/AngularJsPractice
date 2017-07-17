<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AngularJS test3</title>
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular.min.js"></script>
<script type="text/javascript" src = "js/controller3.js"></script>
</head>
<body>
	<div class="well span6" style="margin-top: 20px;" ng-controller="ShowHideCtrl">
		<label>Show? <input type="checkbox" ng-model="checked">
		</label> <label>English? <input type="checkbox" ng-model="eng"
			ng-true-value="abgne.tw" ng-false-value="男丁格爾">
		</label>
		<hr>
		<h2 ng-show="checked">{{ eng }}</h2>
	</div>
</body>
</html>