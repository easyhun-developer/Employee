/**
 * @author java
 */

app.config(function($routeProvider) {
	console.log("append config...")
	
	$routeProvider.when("/append", {
		templateUrl: "append.html",
		controller: "appendController"
	});
});

app.controller('appendController', function($scope,$http,$location,URL) {
	console.log("appendController...");
	console.log("URL.POST_ITEM_APPEND = " + URL.POST_ITEM_APPEND);
	
	$scope.$parent.title = "Append City View";
	$scope.city = {};
	$scope.submit = function() {
		var ajax = $http.post(URL.POST_ITEM_APPEND,{
			name : $scope.city.name,
			district : $scope.city.district,
			countryCode : $scope.city.countryCode,
			population : $scope.city.population,
		});
		
		ajax.then(function(value) {
			$location.path("/list");
		}, function(reason) {
			$scope.city = reason.data
		})
		
	};
});
