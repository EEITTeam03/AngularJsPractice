var todoAPP = angular.module('TodoAPP',[]);

todoAPP.controller('Ctrl1',['$scope',function(s){
	s.myInputs=[];
	//s.classObj={useItalic: 'italic'};
	s.addtodo = function() {
		s.myInputs.push(s.inputString);
	};
	s.remove = function(index){
		s.myInputs.splice(index, 1);
	};
}])