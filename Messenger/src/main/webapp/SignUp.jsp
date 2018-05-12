<%@ include file="/Utility.jsp"%>
<link rel="stylesheet" href="/Messenger/JS/main.css">
<div ng-controller="SignUpCtrl">
		<h2 style="font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;">SignUp here to continue</h2>
		<form>
			<%=beginTable(  ) %>
				<tr>
					<td><b>Username</b></td>
					<td><input type="text" name="userName"
						ng-model="signup1.userName"></td>
				</tr>
				<tr>
					<td><b>Password</b></td>
					<td><input type="password" name="passWord"
						ng-model="signup1.passWord"></td>
				</tr>
				<tr>
					<td><b>Re - Password</b></td>
					<td><input type="password" name="passWord1"
						ng-model="signup1.passWord1" ng-change="myFunc()"></td>
				</tr>
				<tr><td></td>
					<td><button ng-click="signUp(signup1)">Signup</button></td>
				</tr>
			<%=endTable() %>
		</form>
	<h3>
		{{errorMsg}}
		</h3>
		
		<h3 ng-if="createFlag">User is created  {{content}}</h3>
</div>
