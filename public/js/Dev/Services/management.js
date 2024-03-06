angular.module('managementService', [])

.factory('Management', function($http) {


	// create a new object
	var managementFactory = {};

	// get all areas
	managementFactory.allAreas = function() {
		return $http.get('/api/areas/');
	};

	// get all lineas
	managementFactory.allLineas = function() {
		return $http.get('/api/lineas/');
	};
	
	// get all centros
	managementFactory.allCentros = function() {
		return $http.get('/api/centros/');
	};
		
	// get all eelisas
	managementFactory.allEelisas = function() {
		return $http.get('/api/eelisas/');
	};

	// return our entire userFactory object
	return managementFactory;

});