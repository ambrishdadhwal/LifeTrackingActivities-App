<%@ include file="/Utility.jsp"%>
<link rel="stylesheet" href="/Messenger/JS/main.css">
<h2 ng-if="loginFlag">System Users :</h2>
<div ng-controller="UsersCtrl" ng-if="loginFlag">

	<%=beginTable(  ) %>
		<tr>
			<th>User id</th>
			<th>Username</th>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Profile Name</th>
			<th>Delete</th>
		</tr>
		<tr ng-repeat="x in usersList">
			<td><button ng-click="getFriend(x.id)">{{x.id}}</button></td>
			<td>{{x.username}}</td>
			<td>{{x.fName}}</td>
			<td>{{x.lName}}</td>
			<td>{{x.pName}}</td>
			<td><button ng-click="deleteUser(x.id);">{{x.id}}</button></td>
		</tr>
	<%=endTable() %>
	<br>
	<div ng-if="userFlag">
		<%=beginTable(  ) %>
			<tr>
				<th>User id</th>
				<th>Username</th>
				<th>FirstName</th>
				<th>LastName</th>
				<th>Profile Name</th>
				<th>Update Me</th>
			</tr>
			<tr>
				<td><input type="text" value="{{user1.id}}" ng-model="user1.id"></td>
				<td><input type="text" value="{{user1.username}} "
					ng-model="user1.username"></td>
				<td><input type="text" value="{{user1.fName}}"
					ng-model="user1.fName"></td>
				<td><input type="text" value="{{user1.lName}}"
					ng-model="user1.lName"></td>
				<td><input type="text" value="{{user1.pName}}"
					ng-model="user1.pName"></td>
				<td><button ng-click="updateUser(user1)";>Update</button></td>
			</tr>
		<%=endTable() %>
		<%=endTable() %>
	<br>
		<%=beginTable(  ) %>
			<tr>
				<th>id</th>
				<th>message</th>
				<th>created</th>
				<th>author</th>
			</tr>
			<tr>
				<td><input type="text" value="{{myWelcome1.id}}"
					ng-model="myWelcome1.id"></td>
				<td><!-- <input type="text" value="{{myWelcome1.message}} "
					ng-model="myWelcome1.message"> -->
					<select name="message" ng-model="myWelcome1.message">
						<option ng-repeat="x in activitiesList"  name="{{x}}">{{x}}</option>
				</select>
					</td>
				<td><input type="text" value="{{myWelcome1.created}}"
					ng-model="myWelcome1.created"></td>
				<td><input type="text" value="{{myWelcome1.author}}"
					ng-model="myWelcome1.author"></td>
			</tr>
		<%=endTable() %>
</div>
</div>
