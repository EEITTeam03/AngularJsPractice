var filter3APP = angular.module('Filter3APP',[]);
filter3APP.controller('TableFilterCtrl',['$scope',function(a){
	a.friends=[{
		name: '男丁格爾',
		age: 18,
		skills: ['jQuery', 'JavaScript', 'Angular.js']
	} 
	// 略...
	, {
		name: '布魯克',
		age: 90,
		skills: ['催眠曲·輪舞', '鼻唄三丁·矢筈斬', '冰凍劍', '哼歌·吹雪斬','abc']
	}, {
		name: '漩渦鳴人',
		age: 17,
		skills: ['色誘術', '後宮術', '螺旋丸', '尾獸玉']
	}];
	var count=0;
	a.sort = function(){
		if(count==0){
			a.friends.sort();
			count++;
		}
		else{
			a.friends.reverse();
			a.friends.sort();
			count--;
		}
	}
	a.limit=3;
}]);