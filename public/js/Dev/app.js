// name our angular app
var MyApp = angular.module('App', ['ui.bootstrap','managementService'])

MyApp.controller('mainController', function ($scope, Management) {

    //Variables
    $scope.variable = 0;

    Management.allAreas()
        .success(function (data) {
           // alert(JSON.stringify(data));
           $scope.areas=data;
        });

    Management.allLineas()
    .success(function (data) {
        //alert(JSON.stringify(data));
        $scope.lineas=data;
    });
        
    Management.allCentros()
    .success(function (data) {
        //alert(JSON.stringify(data));
        $scope.centros=data;
    });  
  
    Management.allEelisas()
    .success(function (data) {
        //alert(JSON.stringify(data));
        $scope.eelisas=data;
    });  

    //Funciones
    $scope.changeTo = function (id) {
        $scope.variable = id;
    }
    $scope.volver = function(){
        $scope.variable = 0;
    }

});

