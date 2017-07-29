var todoAPP = angular.module('TodoAPP',['ngRoute'],function(
		$routeProvider) {
	$routeProvider.when('/:path', {
		templateUrl : 'view.html',
		controller:'HideCtrl'
	}).otherwise({
		redirectTo : '/'
	});
});

todoAPP.controller('Ctrl1',['$scope','$routeParams',function(s,r){
	s.myInputs=[];
	s.inputString='';
	s.addtodo = function() {
		s.myInputs.push({text:s.inputString, status:false});
		s.inputString='';
	};
	s.remove = function(index){
		s.myInputs.splice(index, 1);
	};
	
	//當route改變，看你點的是All、Active或Completed，該選項會有框線
	s.$on('$routeChangeSuccess', function () {
		s.status = r.path;
		//alert(s.status);
	});
}])

todoAPP.controller('HideCtrl', ['$scope', '$routeParams',function(s,r){
	s.isHide = function(inputStatus){
		if(r.path == 'active'){
			return inputStatus;
		}else if(r.path == 'completed'){
			return !inputStatus;
		}
		else
			return false;
	};	
}])


