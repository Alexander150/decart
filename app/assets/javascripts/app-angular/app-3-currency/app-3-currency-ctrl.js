app.controller("CurrencyCtrl", function($scope) {
	$scope.init = function(id){
		$scope.id = id;
		$scope.getCurrency();
	}
	$scope.getCurrency = function(){
		$.getJSON("/currencies/" + $scope.id, function(res){
			$scope.currency = res.currency;
			$scope.time = new Date();
			$scope.$apply();
			setTimeout(function(){
				$scope.getCurrency();
			}, 60000);
		});
	}
});