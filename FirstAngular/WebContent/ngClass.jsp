<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ngClass</title>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0-rc.2/angular.min.js"></script>
	<script type="text/javascript" src="js/controller14.js"></script>
<style>
.red {
	color: red;
}
.bold {
	font-weight: bold;
}
.italic {
	font-style: italic;
}
.blue {
	color: blue;
}
.even{
	color: green;
/* 	font-weight: bold; */
}
.odd{
	color: orange;
/* 	font-style: italic; */
}
</style>
</head>
<body>
	<div class="well span4" style="margin-top: 20px;"
		ng-init="cusClass='red';">
		<div ng-class="cusClass">男丁格爾 angular.js</div>
	</div>
	<div class="well span4" style="margin-top: 20px;"
		ng-init="blue='blue';bold='';italic='italic';">
		<div ng-class="[blue, bold, italic]">男丁格爾 angular.js</div>
	</div>
	<div class="well span4" style="margin-top: 20px;" ng-controller="Ctrl">
		<div ng-class="cssObj[selectd]">男丁格爾 angular.js</div>
	</div>
	<div class="well span4" style="margin-top: 20px;" ng-controller="Ctrl">
		<label><input type="checkbox" ng-model="useRed"
			style="margin: 0;"> Red?</label> <label><input
			type="checkbox" ng-model="useBold" style="margin: 0;"> Bold?</label>
		<label><input type="checkbox" ng-model="useItalic"
			style="margin: 0;"> Italic?</label>
			<label><input type="checkbox" ng-model="useBlue"
			style="margin: 0;"> Blue?</label>
		<div ng-class="{ red: useRed, bold: useBold, italic: useItalic, blue: useBlue }">男丁格爾
			angular.js</div>
	</div>
	<div class="well span4" style="margin-top: 20px;" ng-controller="Ctrl">
		<ul>
			<li ng-repeat="num in nums" ng-class="{even:$even,odd:$odd}">{{num}}</li>
		</ul>
	</div>
</body>
</html>