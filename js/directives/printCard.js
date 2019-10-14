app.directive('printCard', function() {
	return {
		restrict: 'E',
		scope:{
			print: '='
		},
		templateUrl: 'js/directives/printCard.html'
	};
});