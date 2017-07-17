var FilterCtrl = function($scope, $filter){
	$scope.num = 1234.12345656789;
	console.log($filter('number')($scope.num, 5));
	$scope.money = 1234.567;
	$scope.birth = '2013-08-26';
	$scope.obj = {
			name: 'abgne.tw', 
			age: 18, 
			skills: [ 'jQuery', 'JavaScript']
		};
	$scope.lower = 'ABGNE.TW';
	$scope.upper = 'abgne.tw';
}