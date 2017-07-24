var myapp = angular.module('myAPP',[]);
myapp.config(function($interpolateProvider){
	$interpolateProvider.startSymbol('(!');
	$interpolateProvider.endSymbol('!)');
});