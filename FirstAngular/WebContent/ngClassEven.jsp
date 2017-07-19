<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ngClassEvenOdd</title>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular.min.js"></script>
	<script type="text/javascript" src="js/controller15.js"></script>
<style>
	.even {
		color: red;
	}
	.odd {
		color: blue;
	}
</style>
</head>
<body>
	<div class="well span4" style="margin-top: 20px;" ng-controller="Ctrl">
<!-- 		<ul> -->
<!-- 			<li ng-repeat="person in friends" -->
<!-- 				ng-class="$index % 2 == 0 ? 'even' : 'odd';">{{ person.name }}</li> -->
<!-- 		<li ng-repeat="person in friends" ng-class-even="'even'" ng-class-odd="'odd'">{{ person.name }}</li> -->
<!-- 		</ul> -->
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<td>名稱</td>
					<td>賞金</td>
				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="person in friends" ng-class-even="'even'" ng-class-odd="'odd'">
					<td>{{ person.name }}</td>
					<td>{{ person.reward }}</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>