<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ngIf</title>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0-rc.2/angular.min.js"></script>
	<script type="text/javascript" src="js/controller13.js"></script>
</head>
<body>
	<div class="well span4" style="margin-top: 20px;" ng-controller="Ctrl">
		<label><input type="checkbox" ng-model="checked"
			style="margin: 0;"> 勾選?</label>

		<div class="alert" ng-show="checked">
			<strong>使用 ng-show!</strong>
		</div>

		<div class="alert alert-success" ng-if="checked">
			<strong>使用 ng-if=checked</strong>
		</div>

		<div class="alert alert-info" ng-if="show();">
			<strong>使用 ng-if=show();</strong>
		</div>
	</div>
</body>
</html>