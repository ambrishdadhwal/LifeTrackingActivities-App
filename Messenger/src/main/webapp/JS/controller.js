	var module = angular.module("myApp", ["ngRoute","ui.router"]);
	module.factory('UserService', function() {
		  return {
		      name : false
		  };
		});
	
	/*
	 * module.config(function($routeProvider) { $routeProvider.when("/", {
	 * templateUrl : "Home.jsp", controller : "homeCtrl" })
	 * .when("/createMessage", { templateUrl : "createMessage.jsp", controller :
	 * "MainCtrl1" }).when("/getMessages", { templateUrl : "getMessages.jsp",
	 * controller : "MainCtrl" }) .when("/Login", { templateUrl : "Login.jsp",
	 * controller : "LoginCtrl" }).when("/Logout", { templateUrl : "Login.jsp",
	 * controller : "LogoutCtrl" }).when("/Users", { templateUrl : "Users.jsp",
	 * controller : "UsersCtrl" }).when("/AddFriend", { templateUrl :
	 * "addFriend.jsp", controller : "addFriendCtrl" }); });
	 */
	// //////////////////////
	module.config(function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/Login');
    $stateProvider
        .state('home', {
            url: '/home',
            templateUrl: 'Home.jsp',
            controller:'homeCtrl'
        })
        .state('createMessage', {
        	url: '/createMessage',
            templateUrl: 'createMessage.jsp',
            controller:'MainCtrl1'       
        }).state('getMessages', {
        	url: '/getMessages',
            templateUrl: 'getMessages.jsp',
            controller:'MainCtrl'       
        }).state('Login', {
        	url: '/Login',
            templateUrl: 'Login.jsp',
            controller:'LoginCtrl'       
        }).state('Logout', {
        	url: '/Logout',
            templateUrl: 'Login.jsp',
            controller:'LogoutCtrl'       
        }).state('Users', {
        	url: '/Users',
            templateUrl: 'Users.jsp',
            controller:'UsersCtrl'       
        }).state('AddFriend', {
        	url: '/AddFriend',
            templateUrl: 'addFriend.jsp',
            controller:'addFriendCtrl'       
        }).state('SignUp', {
        	url: '/SignUp',
            templateUrl: 'SignUp.jsp',
            controller:'SignUpCtrl'       
        }).state('MyProfile',{
        	url:'/MyProfile',
        	templateUrl:'MyProfile.jsp',
        	controller:'MyProfileCtrl'
        });
});

module.controller("MainCtrl", Main);
	module.controller("MainCtrl1", Main1);
	module.controller("homeCtrl", Home);
	module.controller("LoginCtrl", Login);
	module.controller("LogoutCtrl", Logout);
	module.controller("UsersCtrl", Users);
	module.controller("addFriendCtrl", NewFriend);
	module.controller("SignUpCtrl", SignUp);
	module.controller("MyProfileCtrl", MyProfileCtrl);
	function Main1($scope, $http) {
		$http.get("webapi/messages/category").then(function(response) {
			$scope.activitiesList = response.data;
		}); 
		
		$scope.createMessage = function() {
			
			$scope.flag1 = false;
			var req = {
				method : 'POST',
				url : 'webapi/messages',
				headers : {
					'Content-Type' : 'application/json'
				},
				data : $scope.message1
			};
			$http(req).then(function(response) {
				$scope.flag1 = true;
				$scope.content = response.data;
				$scope.message1 = {};
			}, function() {
				$scope.content = 'something went wrong!!!';
				$scope.message1 = {};
			});
		};
	};

	function Main($rootScope, $http,$window) {
		$http.get("webapi/messages").then(function(response) {
			$rootScope.flag = false;
				$rootScope.myWelcome = response.data;
		});

		$rootScope.getMessage = function(id) {
			$http.get("webapi/messages/category").then(function(response) {
				$rootScope.activitiesList = response.data;
			});
			$rootScope.flag = true;
			$http.get("webapi/messages/" + id).then(function(response) {
				$rootScope.myWelcome1 = response.data;
			});
		};

		$rootScope.createMessage = function() {
			$rootScope.flag1 = false;
			var req = {
				method : 'POST',
				url : 'webapi/messages',
				headers : {
					'Content-Type' : 'application/json'
				},
				data : $rootScope.message1
			};
			
			$http(req).then(function(response) {
					$rootScope.flag1 = true;
					$rootScope.content = response.data;
					$rootScope.message1 = {};
			},function(){
				$rootScope.content ='something went wrong!!!';
				$rootScope.message1 = {};
			});
		};

		$rootScope.deleteMessage = function(id) {
			var url = 'webapi/messages/'+id, data = id;
			var a = confirm('are you sure to want to delete Activity?');
			if(!a)
				 return;
			$http.delete(url, JSON.stringify(data)).then(function (response) {
				$http.get("webapi/messages").then(function(response) {
					$rootScope.flag = false;
						$rootScope.myWelcome = response.data;
				});
			}, function (response) {
				});
		};
		
		$rootScope.updateMessage = function(message){
		var url = 'webapi/messages/', data = message,config='application/json';
		$http.put(url, data, config).then(function (response) {
			$rootScope.myWelcome1 = response.data;
			$http.get("webapi/messages").then(function(response) {
				$rootScope.flag = false;
					$rootScope.myWelcome = response.data;
			});
		}, function (response) {

		});
	};
	}
	function Login($rootScope, $http,$window,UserService,$state){
		UserService.name = true;
		$rootScope.loginFlag = false;
		$rootScope.contentLogin = "";
		$rootScope.Login = function(user){
			$http.get("webapi/profiles/profile/"+user.username+"/"+user.password).then(function(response) {
					if(response.data == null || response.data =='' || response.data == 'undefined'){
						$rootScope.contentLogin ='OOPS !!! User not found';
						return;
					}		
					 $rootScope.loginFlag = true;
					 $rootScope.userDetails = response.data;
					 $state.go('home');
					// $rootScope.contentLogin="Login successfull";
					// $rootScope.myWelcome = response.data;
			},function(){
					$rootScope.contentLogin ='OOPS !!! User not found';
			});	
		};
		$rootScope.contentLogin = "";
	};
	function Logout($rootScope){
		$rootScope.loginFlag = false;
		
	};
	function Home(){
		
		
	};
	function Users($scope,$http){
		$scope.userFlag = false;
		$http.get("webapi/profiles").then(function(response){
			$scope.usersList = response.data;
		},function(){
							
		});
		
		$scope.updateUser = function(user){

			var url = 'webapi/profiles/update', data = user,config='application/json';
			$http.put(url, data, config).then(function (response) {
				$scope.user1 = response.data;
				$scope.userFlag = false;
				$http.get("webapi/profiles").then(function(response) {
						$scope.usersList = response.data;
				});
			}, function (response) {

			});
				
		};
		
		$scope.getFriend = function(id){
			$http.get("webapi/profiles/"+id).then(function(response){
				$scope.user1 = response.data;
				$scope.userFlag = true;
			},function(){
								
			});
			$http.get("webapi/messages/" + id).then(function(response) {
				$scope.myWelcome1 = response.data;
			});
		};
		$scope.deleteUser = function(id){
			var url = 'webapi/profiles/'+id, data = id;
			var a = confirm('are you sure to want to delete User?');
			if(!a)
				 return;
			$http.delete(url, JSON.stringify(data)).then(function (response) {
				$http.get("webapi/profiles").then(function(response) {
						$scope.usersList = response.data;
				});
			}, function (response) {
				});
		}
	};
	
	function NewFriend($scope,$http){
		$scope.flagFriend = false;
		$scope.createFriend = function() {
			var req = {
				method : 'POST',
				url : 'webapi/profiles',
				headers : {
					'Content-Type' : 'application/json'
				},
				data : $scope.friend
			};
			$http(req).then(function(response) {
				$scope.frienddata = response.data;
				$scope.flagFriend = true;
				$scope.friend = {};
			}, function() {
				$scope.frienddata = 'something went wrong!!!';
				$scope.friend = {};
			});
		};
	};
	function SignUp($scope,$http,$state,$timeout){
		$scope.createFlag = false;
			 $scope.myFunc = function() {
			        if($scope.signup1.passWord!=$scope.signup1.passWord1){
			        	$scope.errorMsg = "password not match";
			        }else{
			        	$scope.errorMsg ="";
			        }
			      };
			      
		$scope.signUp = function(signup1){
			if($scope.signup1.passWord!=$scope.signup1.passWord1){
					alert('sory password does not match');				
	    	     return;
			}
			var req = {
					method : 'POST',
					url : 'webapi/users',
					headers : {
						'Content-Type' : 'application/json'
					},
					data : $scope.signup1
				};
			$http(req).then(function(response) {
				$scope.content = response.data;
				$scope.createFlag  =true;
				$scope.signup1 = {};
				$timeout(function () {
					$state.go("Login");
			    }, 2000);
			}, function() {
				console.log('error');
			});
		};
	};
	
	function MyProfileCtrl($scope,$http){
		var data1 = {url :'/profiles/profileCount'};
		$http.get('webapi/profiles/profileCount').then(function(response){
			$scope.profileCount = response.data;
		});
	};