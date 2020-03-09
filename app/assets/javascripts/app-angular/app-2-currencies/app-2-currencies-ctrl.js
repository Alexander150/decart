app.controller("CurrenciesCtrl", function($scope) {
	$scope.getCurrencies = function(){
		$.getJSON("/currencies", function(res){
			$scope.currencies = res.currencies;
			alert($scope.currencies);
			$scope.$apply();
			// setTimeout(function(){
			// 	$scope.getCurrencies();
			// }, 60000);
		});
	}
});