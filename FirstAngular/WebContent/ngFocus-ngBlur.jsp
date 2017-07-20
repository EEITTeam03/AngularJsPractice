<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ngFocus_ngBlur</title>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular.min.js"></script>
</head>
<body>
	<style>
	input[type="text"].myFocus {
		background-color: yellow;
	}
	input[type="text"].myBlur {
		background-color: red;
	}
</style>
<div class="well span4" style="margin-top:20px;" ng-init="focus=false;blur=false;">
	<input type="text" ng-class="{ myFocus: focus, myBlur: blur }" ng-focus="focus=true;blur=false;" ng-blur="blur=true;focus=false;">
</div>
</body>
</html>