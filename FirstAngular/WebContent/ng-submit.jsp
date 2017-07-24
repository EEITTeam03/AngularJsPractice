<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ng-submit</title>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0-rc.2/angular.min.js"></script>
	<script type="text/javascript" src="js/controller20.js"></script>
</head>
<body>
	<form class="well span6" style="margin-top: 20px;" ng-submit="submit()"
		ng-controller="Ctrl">
		<label>請輸入你會的技能:</label> <input type="text" ng-model="skill"
			name="skill" /> <input type="submit" id="submit" value="加入" />
		<div>技能 = {{ skills }}</div>
	</form>
</body>
</html>