var filter2APP = angular.module('Filter2APP',[]);
filter2APP.controller('TableFilterCtrl',['$scope','$filter',function(new$scope,new$filter){
	new$scope.friends = [{
		name: '男丁格爾',
		age: 18,
		skills: ['jQuery', 'JavaScript', 'Angular.js']
	} 
	// 略...
	, {
		name: '布魯克',
		age: 90,
		skills: ['催眠曲·輪舞', '鼻唄三丁·矢筈斬', '冰凍劍', '哼歌·吹雪斬']
	}];
	
	 //filter
	//console.log(new$filter('filter')(new$scope.friends, new$scope.search, true));
}]);