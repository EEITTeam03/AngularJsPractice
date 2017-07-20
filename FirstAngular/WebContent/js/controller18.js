var myApp = angular.module('MyApp', []);
 
myApp.controller('Ctrl', function($scope){
	$scope.text = 'Hello Kitty is Sucks';
});

myApp.filter('clean',function(){
	return function(str){
		return str.toLowerCase().replace(/\s+/g,'-');
	};
});

myApp.filter('clean2',function(){
	return function(str, separator){
		return str.toLowerCase().replace(/\s+/g,separator||'-');
	};
});