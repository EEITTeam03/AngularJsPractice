<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="MyApp">
<head>
	<meta charset="UTF-8">
	<title>男丁格爾's 脫殼玩 - AngularJS</title>
	<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0-rc.2/angular.min.js"></script>
	<script src="js/controller18.js"></script>
</head>
<body>
	<div class="well span4" style="margin-top:20px;" ng-controller="Ctrl">
		{{ text|clean2:'+' }}
	</div>
</body>
</html>