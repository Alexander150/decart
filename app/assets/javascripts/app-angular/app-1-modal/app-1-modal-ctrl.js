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

	$scope.send = function(){
		var select = document.querySelector('select');

		var indexSelected = select.selectedIndex, option = select.querySelectorAll('option')[indexSelected];
  		var selectedId = option.getAttribute('id');
  		if (selectedId == null){
  			alert("Выберите валюту");
  			return
  		}
  		var url = "/show/"+selectedId;

  		document.location.href = url;
	}

});