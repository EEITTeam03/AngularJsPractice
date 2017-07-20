<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="ListAPP">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ngList</title>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular.min.js"></script>
	<script type="text/javascript" src = "js/controller17.js"></script>
</head>
<body>
	<div class="well span4" style="margin-top: 20px;" ng-controller = "Ctrl">
		<input type="text" ng-model="tags" ng-list=/\s/>
		<div>tags = {{ tags }}</div>
	</div>
</body>
</html>