app.controller("ModalCtrl", function($scope) {
	$scope.closeSearch = function () {
		$(".modal").css({
			"opacity": 0,
			"pointer-events": "none",
			"z-index": "0"
		});
	}
	$scope.openSearch = function(){
		$(".modal").css({
			"opacity": 1,
			"pointer-events": "all",
			"z-index": "1000"
		});
	}
});