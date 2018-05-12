<%@ include file="/Utility.jsp"%>
<link rel="stylesheet" href="/Messenger/JS/main.css">
<div ng-controller="LoginCtrl">
	<div ng-if="!loginFlag"  >
		<h2 style="font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;">Login here to continue</h2>
		<form>
			<%=beginTable(  ) %>
				<tr>
					<td><b>Username</b></td>
					<td><input type="text" name="username"
						ng-model="user.username"></td>
				</tr>
				<tr>
					<td><b>Password</b></td>
					<td><input type="password" name="password"
						ng-model="user.password"></td>
				</tr>
				<tr>
				<td></td>
					<td><button ng-click="Login(user)">Login</button></td>
				</tr>
			<%=endTable() %>
		</form>
	</div>
	<h3>
		{{contentLogin}}
		</h4>
</div>
