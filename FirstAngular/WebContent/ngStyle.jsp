<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app = "StyleAPP">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ngStyle</title>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular.min.js"></script>
	<script type="text/javascript" src="js/controller16.js"></script>
</head>
<body>
<!-- 	<div class="well span4" style="margin-top: 20px;" ng-init="myStyle={}"> -->
<!-- 		<input type="button" class="btn btn-primary" value="Set" -->
<!-- 			ng-click="myStyle={color:'red',fontSize:'24px','background-color':'yellow'}"> -->
<!-- 		<input type="button" class="btn btn-warning" value="Clear" -->
<!-- 			ng-click="myStyle={}"> <br> -->
<!-- 		<br> -->
<!-- 		<div ng-style="myStyle">男丁格爾's 脫殼玩</div> -->
<!-- 		<pre>myStyle = {{ myStyle }}</pre> -->
<!-- 	</div> -->
	<div class="well span4" style="margin-top: 20px;" ng-controller="myCtrl">
		<input type="button" class="btn btn-primary" value="Set"
			ng-click="num=true;">
		<input type="button" class="btn btn-warning" value="Clear"
			ng-click="num=false;"> <br>
		<br>
		<div ng-style="myStyle(num)">男丁格爾's 脫殼玩</div>
		<pre>myStyle = {{ myStyle(num)}}</pre>
	</div>
</body>
</html>