<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="OptionsAPP">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ngOptions</title>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular.min.js"></script>
	<script type="text/javascript" src="js/controller11.js"></script>
</head>
<body>
	<div class="span5" style="margin-top:20px;" ng-controller="SelectCtrl">
	<div class="alert alert-info">
			<select ng-model="role"
				ng-options="i as member group by i for (i, member) in onepiece">
				<option value="">--請選擇角色--</option>
			</select>

			<div ng-show="role!=''">選擇的是:{{ role }}</div>
	</div>
</div>
</body>
</html>