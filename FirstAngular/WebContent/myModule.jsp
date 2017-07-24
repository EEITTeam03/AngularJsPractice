<!DOCTYPE html >
<html ng-app="myAPP">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>自定模板符號</title>
	<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0-rc.2/angular.min.js"></script>
	<script src="js/controller19.js"></script>
</head>
<body>
	<div >
	<input type="text" ng-model="name" >
	<h1>Hello (! name || "AngularJS" !) !!</h1>
	</div>
</body>
</html>