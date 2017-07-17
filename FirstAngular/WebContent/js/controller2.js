var myCtrl = function($scope){
	$scope.phone = "0912345678";
	$scope.$watch(function(){
		console.log($scope.phone);
	})
};