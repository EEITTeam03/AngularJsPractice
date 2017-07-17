
var calApp = angular.module('CalApp', []);
calApp.controller( 'CalCtrl' , function($scope) {
	$scope.num1 = 0;
	$scope.num2 = 5;
});

calApp.controller( 'CalCtrl2' , function($scope) {
	$scope.num3 = 1;
	$scope.num4 = 9;
});