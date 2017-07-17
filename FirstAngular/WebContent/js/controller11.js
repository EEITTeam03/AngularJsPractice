var optionsAPP = angular.module('OptionsAPP',[]);
optionsAPP.controller('SelectCtrl',['$scope',function(s){
	s.onepiece = [ '蒙其·D·魯夫', '羅羅亞·索隆', '娜美', '騙人布', '香吉士', '多尼多尼·喬巴', '妮可·羅賓', '佛朗基', '布魯克' ];
}]);


optionsAPP.controller('SelectCtrl2',['$scope',function(a){
a.onepiece = [{
	name: '蒙其·D·魯夫', 
	age: 19,
	skills: [ '橡膠槍', '橡膠火箭砲', '換檔', '霸氣' ]
}, 
// 略...
{
	name: '布魯克', 
	age: 90,
	skills: [ '催眠曲·輪舞', '鼻唄三丁·矢筈斬', '冰凍劍', '哼歌·吹雪斬' ]
}];
}]);

optionsAPP.controller('SelectCtrl3',['$scope',function(a){
	a.onepiece = {
			'船長': {
				name: '蒙其·D·魯夫',
				age: 19,
				skills: ['橡膠槍', '橡膠火箭砲', '換檔', '霸氣']
			}
			// 略...
			,'音樂家': {
				name: '布魯克',
				age: 90,
				skills: ['催眠曲·輪舞', '鼻唄三丁·矢筈斬', '冰凍劍', '哼歌·吹雪斬']
			}
		};
	a.result = '';
	a.changeCount = 0;
	a.change = function(){
		a.changeCount++;
		a.result = a.role + '(變更了 ' + a.changeCount + ' 次)';
	};
	}]);