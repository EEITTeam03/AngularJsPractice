var todoAPP = angular.module('TodoAPP', [ 'ngRoute' ],
		function($routeProvider) {
			$routeProvider.when('/:path', {
				templateUrl : 'view.html',
				controller : 'HideCtrl'
			}).otherwise({
				redirectTo : '/'
			});
		});

todoAPP.controller('Ctrl1', [ '$scope', '$routeParams', '$filter',
		function(s, r, f) {
			//開始時讀取localStorage看有沒有之前的存的，如果有的話就讀進來，沒有的話(null)就給空陣列
			var storedItems = JSON.parse(localStorage.getItem("todo-list"));
			console.log(storedItems);
			s.myInputs = !!storedItems? storedItems :[];
			s.inputString = '';
			s.editedTodo = null;
			s.addtodo = function() {
				s.myInputs.push({
					text : s.inputString,
					status : false
				});
				s.inputString = '';
			};
			s.remove = function(index) {
				s.myInputs.splice(index, 1);
			};

			// 監控myInputs陣列元素的變化,第3個參數為true會呼叫equals方法來比較
			s.$watch("myInputs", function(newValue, oldValue) {

				s.count = f('filter')(newValue, {status : false}).length;
				s.completedCount = s.myInputs.length-s.count;
				//如果陣列元素有未勾的選項，全選取消勾選
				s.allChecked = !s.count;
				//陣列變化時存下來
				localStorage.setItem('todo-list',JSON.stringify(s.myInputs));
			}, true);

			// 當route改變，看你點的是All、Active或Completed，該選項會有框線
			s.$on('$routeChangeSuccess', function() {
				s.status = r.path;
			});
			
			s.markAll = function(status){
				s.myInputs.forEach(function(elt, i, array) {
					if(elt.status!=status){
						elt.status = status;
					}
				})
			}
			
			s.clearCompletedTodos = function(){
				s.myInputs = f('filter')(s.myInputs, {status : false});
			}
			
		} ])

todoAPP.controller('HideCtrl', [ '$scope', '$routeParams', function(s, r) {
	s.isHide = function(inputStatus) {
		if (r.path == 'active') {
			return inputStatus;
		} else if (r.path == 'completed') {
			return !inputStatus;
		} else
			return false;
	};
	
	s.editTodo = function (todo) {
		
		s.editedTodo = todo;
		
		s.originalTodo = angular.extend({}, todo);
		
	};
	
	s.saveEdits = function(todo, event){
		//alert(todo.text);
		s.editedTodo = null;
	};
	
} ])
