var todoAPP = angular.module('TodoAPP',['ngRoute'],function(
		$routeProvider) {
	$routeProvider.when('/:path', {
		templateUrl : 'view.html',
		controller:'HideCtrl'
	}).otherwise({
		redirectTo : '/'
	});
});

todoAPP.controller('Ctrl1',['$scope',function(s){
	s.myInputs=[];
	//s.classObj={useItalic: 'italic'};
	s.inputString='';
	s.addtodo = function() {
		s.myInputs.push({text:s.inputString, status:false});
		s.inputString='';
	};
	s.remove = function(index){
		s.myInputs.splice(index, 1);
	};
}])

todoAPP.controller('HideCtrl', ['$scope', '$routeParams',function(s,r){
	s.isHide = function(status){
		if(r.path == 'actives'){
			return status;
		}else
			return false;
	};
}])
