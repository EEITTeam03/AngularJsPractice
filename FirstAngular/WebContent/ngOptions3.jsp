<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="OptionsAPP">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ngOptions3</title>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular.min.js"></script>
	<script type="text/javascript" src="js/controller11.js"></script>
</head>
<body>
	<div class="alert alert-info" ng-controller="SelectCtrl3">
<!-- 		<select ng-model="role" -->
<!-- 			ng-options="member as member.name group by member.age for (title, member) in onepiece"> -->
<!--			<option value="">--請選擇角色--</option>-->
<!-- 		</select> -->

<!-- 		<div ng-show="role!=null">選擇的是:{{ role.name + '(' + role.age + ')' }}</div> -->
		
		<select ng-model="role1"
			ng-options="member as member.name group by member.age for (title, member) in onepiece">
			<option value="">--請選擇角色--</option>
		</select>
		<input type="text" ng-model="role1.name"/>
		<input type="text" ng-model="role1.age"/>
		<div ng-show="role1!=null">選擇的是:{{ role1.name + '(' + role1.age + ')' }}</div>
	</div>
</body>
</html>