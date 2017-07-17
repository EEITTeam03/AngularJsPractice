<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ngHref</title>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular.min.js"></script>
</head>
<body>
	<div class="span5" style="margin-top: 20px;"
		ng-init="guess='guess.png';">
		<div class="alert">
			<button class="btn btn-primary" ng-click="guess='abgne.tw.jpg';">圖片改為
				abgne.tw.jpg</button>
			<button class="btn btn-primary" ng-click="guess='guess.png';">圖片改為
				guess.png</button>
		</div>

		<div class="alert alert-success">
			<a ng-href="img/{{ guess }}">瀏覽圖片</a>
		</div>
	</div>
</body>
</html>