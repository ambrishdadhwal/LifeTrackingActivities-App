<%@ include file="/Utility.jsp"%>
<link rel="stylesheet" href="/Messenger/JS/main.css">
<div ng-controller="addFriendCtrl" ng-if="loginFlag">
	<h2>Add a new Friend</h2>
	<form>
		<%=beginTable(  ) %>
			<tr>
				<td>Friend ID:</td>
				<td><input type="text" name="id" ng-model="friend.id"></td>
			</tr>
			<tr>
				<td>Friend's Username:</td>
				<td><input type="text" name="id" ng-model="friend.username"></td>
			</tr>
			<tr>
				<td>Friend First Name</td>
				<td><input type="text" name="message" ng-model="friend.fName"></td>
			</tr>
			<tr>
				<td>Friend Last Name</td>
				<td><input type="text" name="author" ng-model="friend.lName"></td>
			</tr>
			<tr>
				<td>Friend Profile Name</td>
				<td><input type="text" name="author" ng-model="friend.pName"></td>
			</tr>
			<tr>
				<td><button ng-click="createFriend()">SUBMIT</button></td>
			</tr>
		<%=endTable() %>
	</form>
	<p ng-if="flagFriend">Friend is created  {{frienddata}}</p>
</div>
