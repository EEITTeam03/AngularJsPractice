<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ng-submit2</title>
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0-rc.2/angular.min.js"></script>
<script type="text/javascript" src="js/controller21.js"></script>
</head>
<body>
	<div ng-controller="Ctrl">
	<div>
	<form class="well span6" style="margin-top: 20px;" ng-submit="submit()" >
		<label>姓名</label>
		<input type="text" ng-model = "name" name = "name"/>
		<label>年齡</label>
		<input type="text" ng-model = "age" name = "age"/>
		<label>技能</label>
		<input type = "text" ng-model = "skill" name = "skill"/>
		<input type="submit" id="submit" value="加入" />
	</form>
	</div>
	
	<table class="table table-striped table-bordered">
		<thead>
			<tr>
				<th>姓名</th>
				<th>年齡</th>
				<th>技能</th>
			</tr>
		</thead>
		<tbody>
			<tr ng-repeat = "info in infos">
				<td>{{info.name}}</td>
				<td>{{info.age}}</td>
				<td >{{info.skill}}</td>
			</tr>
		</tbody>
	</table>
	
	</div>
</body>
</html>