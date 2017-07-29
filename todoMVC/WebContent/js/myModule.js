var todoAPP = angular.module('TodoAPP',['ngRoute'],function(
		$routeProvider) {
	$routeProvider.when('/:path', {
		templateUrl : 'view.html',
		controller:'HideCtrl'
	}).otherwise({
		redirectTo : '/'
	});
});

todoAPP.controller('Ctrl1',['$scope','$routeParams','$filter',function(s,r,f){
	s.myInputs=[];
	s.inputString='';
	//s.count = 0;
	s.addtodo = function() {
		s.myInputs.push({text:s.inputString, status:false});
		s.inputString='';
	};
	s.remove = function(index){
		s.myInputs.splice(index, 1);
	};
	
	//監控myInputs陣列元素的變化,第3個參數為true會呼叫equals方法來比較
	s.$watch("myInputs", function(newValue, oldValue) {
		
		s.count = f('filter')(newValue,{ status: false }).length;
	},true);
	
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


