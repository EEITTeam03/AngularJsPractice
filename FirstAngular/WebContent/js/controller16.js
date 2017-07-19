var styleAPP = angular.module('StyleAPP',[]);
styleAPP.controller('myCtrl',['$scope',function(a){
	//var boolean = true;
	a.myStyle = function(num){
			if(num)
				return {color:'red', fontSize:'24px'};
				else {};
	}
}])