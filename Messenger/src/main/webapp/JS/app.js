var module = angular.module("myApp",[]);
module.controller("MainCtrl",Main);

function Main($scope){
  $scope.day = 21
  $scope.date = new Date().toTimeString();
  $scope.updateTime = function(){
    $scope.date = new Date().toTimeString();
  };
}
