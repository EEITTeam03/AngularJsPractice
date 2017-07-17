<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>view</title>
<!-- <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css"> -->
<!-- 	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0-rc.2/angular.min.js"></script> -->
<!-- 	<script src="http://code.angularjs.org/1.2.0-rc.2/angular-route.min.js"></script> -->
<!-- 	<script src="js/controller12.js"></script> -->
</head>
<body>
		<label>姓名:</label> <input type="text" ng-model="friends[index].name">

		<label>懸賞金:</label> <input type="text"
			ng-model="friends[index].reward"> <br> <a
			class="btn btn-primary" ng-href="#/">Update</a>
</body>
</html>