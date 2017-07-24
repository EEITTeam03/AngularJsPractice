var Ctrl = function($scope) {
	// $scope.skills = [];
	//	
	// $scope.skill = '';
	// $scope.submit = function(){
	// if(!!$scope.skill) {
	// $scope.skills.push($scope.skill);
	// }
	// $scope.skill = '';
	$scope.infos = [];
	$scope.name = '';
	$scope.age = '';
	$scope.skill = '';
	$scope.submit = function() {
		if ($scope.name!='' && $scope.age!='' && $scope.skill!='') {
			$scope.infos.push({
				name : $scope.name,
				age : $scope.age,
				skill : $scope.skill
			})
		}
		$scope.name = '';
		$scope.age = '';
		$scope.skill = '';
	};

};