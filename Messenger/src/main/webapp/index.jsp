<jsp:useBean id="reportBean" class="db.utils.DBUtility" />
<html>
<head>
<link rel="stylesheet" href="/Messenger/JS/main.css">
<!-- <script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular-route.js"></script> -->
<!-- <script src="https://code.jquery.com/jquery-3.3.1.js"></script> -->
<script type="text/javascript" src="/Messenger/JS/angular.js"></script>
<script type="text/javascript" src="/Messenger/JS/angular-route.js"></script>
<script type="text/javascript" src="/Messenger/JS/jquery-3.3.1.js"></script>
<script type="text/javascript" src="/Messenger/JS/controller.js"></script>

<script src="/Messenger/JS/angular-ui-router.js"> </script>
<script>

function clickMe(){
    $("a").click(function(){
    	$(".active").removeClass("active");
        	this.className +="active";
    });
}

	
</script>
</head>
<h1 style="font-family:"TrebuchetMS", Arial, Helvetica, sans-serif;">Tracking
	Life Activities</h1>
<body ng-app="myApp">
	<ul>
		<li ng-if="loginFlag"><a href="#!home" onclick="clickMe()">Home</a></li>
		<li ng-if="loginFlag"><a href="#!createMessage"
			onclick="clickMe()">Create Activity</a></li>
		<li ng-if="loginFlag"><a href="#!getMessages" onclick="clickMe()">You
				Activities</a></li>
		<li ng-if="loginFlag"><a href="#!AddFriend" onclick="clickMe()">Add
				New Friend</a></li>
		<li ng-if="loginFlag"><a href="#!Users" onclick="clickMe()">Friends
				In Your Life</a></li>

		<li ng-if="loginFlag"><a href="#!MyProfile" onclick="clickMe()">My
				Profile</a></li>
		<li ng-if="!loginFlag" class="active"><a href="#!Login"
			onclick="clickMe()">Login here</a></li>
		<li ng-if="!loginFlag"><a href="#!SignUp" onclick="clickMe()">SignUp
				here</a></li>
		<li ng-if="loginFlag"><a href="#!Logout" onclick="clickMe()">Logout</a></li>
	</ul>



	<!-- <div ng-view></div> -->
	<div ui-view></div>
</body>
</html>

