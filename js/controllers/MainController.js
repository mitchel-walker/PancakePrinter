app.controller('MainController',
	['$scope',
	function($scope){
		$scope.title = 'Did it work?'

		$scope.spongebob = {
			image: "images/spongebob.png",
			title: "spongebob",
			time: 10.34
		};
	}])