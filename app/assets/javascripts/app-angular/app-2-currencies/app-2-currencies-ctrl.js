app.controller("CurrenciesCtrl", function($scope) {
	$scope.getCurrencies = function(){
		$.getJSON("/currencies", function(res){
			$scope.currencies = res.currencies;
			$scope.time = new Date();
			$scope.$apply();
			setTimeout(function(){
				$scope.getCurrencies();
			}, 60000);
		});
	}
});