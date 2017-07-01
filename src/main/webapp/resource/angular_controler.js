/*var app = angular.module('rsh' , []);

app.controller('recRegistor' , function($scope){
	$scope.formData ={}
	$scope.onSubmit = function(){
		console.log('hey im submited');
		console.log($scope.formData);
	};
});*/
var wapp1 = angular.module('trattore' ,  []);
	wapp1.controller('registor',function($scope ,$http){
		$scope.addCustomer = function(customer){
			alert("hai1");
			$http.post("/customer_registor" , customer).success(function(){
				alert("hai1");
				
			}).error(function() {
				alert("hai1 error");
	            $scope.setError('Could not add a new station');
	        });
		}
		
	});