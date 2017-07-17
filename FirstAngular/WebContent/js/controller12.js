var onePiece = angular.module('OnePiece', [ 'ngRoute' ], function(
		$routeProvider) {
	$routeProvider.when('/', {
		templateUrl : 'view.jsp'
	}).when('/edit/:index', {
		templateUrl : 'edit.jsp',
		controller:'EditCtrl'
	}).when('/hello/:message/:index/:word', {
		templateUrl : 'hello.jsp',
		controller:'GreetingCtrl'
	}).otherwise({
		redirectTo : '/'
	});
});
 
onePiece.controller('OnePieceCtrl', function($scope){
	$scope.friends = [{
		name: '蒙其·D·魯夫', 
		reward: 400000000
	}
	// 略...
	, {
		name: '布魯克', 
		reward: 33000000
	}];
});

onePiece.controller('GreetingCtrl', function($scope, $routeParams){
	$scope.greeting = $routeParams.message;
	$scope.index = $routeParams.index;
	$scope.saysomething = $routeParams.word;
})

onePiece.controller('EditCtrl', function($scope, $routeParams){
	$scope.index = $routeParams.index;
});