/**
 * @author java
 */

app.config(function($routeProvider) {
	console.log("modify config...")
	
	$routeProvider.when("/modify/:id", {
		templateUrl: "modify.html",
		controller: "modifyController"
	});
});

app.controller('modifyController', function($scope,$http,URL,$routeParams, $location) {
	console.log("modifyController...");
	console.log("URL.PUT_ITEM_MODIFY_BASE = " + URL.PUT_ITEM_MODIFY_BASE);
	console.log("URL.GET_ITEM_BASE = " + URL.GET_ITEM_BASE);
	console.log("id = " + $routeParams.id);
	
	$scope.$parent.title = "Modify City View";
	
	var ajax = $http.get(URL.GET_ITEM_BASE + $routeParams.id);
	ajax.then(function(value) {
		console.dir(value);
	$scope.city = value.data;
},function(reason){
	console.dir(reason);
	alert("error...");
	});
	
	$scope.submit = function() {
		var ajax = $http.put(URL.PUT_ITEM_MODIFY_BASE + $scope.city.id, {
			id 				: $scope.city.id,
			name 			: $scope.city.name,
			countryCode 	: $scope.city.countryCode,
			district 		: $scope.city.district,
			population 		: $scope.city.population
		});
		
		ajax.then(function(response) {
			console.dir(response.data);
			$location.path("/list");
		},function(response){
			console.dir(response.data);
		});
		
	};
	
});
