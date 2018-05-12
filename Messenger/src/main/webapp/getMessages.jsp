<%@ include file="/Utility.jsp"%>
<link rel="stylesheet" href="/Messenger/JS/main.css">
<h2 ng-if="loginFlag">Activities Data are below</h2>
<div ng-controller="MainCtrl" ng-if="loginFlag">

	<!-- <button ng-click="getMessages()">get messages</button> -->
	<%=beginTable(  ) %>
		<tr>
			<th>Activity id</th>
			<th>Activity Category</th>
			<th>created</th>
			<th>Activity Description</th>
			<th>Delete</th>
		</tr>
		<tr ng-repeat="x in myWelcome">
			<td><button ng-click="getMessage(x.id);">{{x.id}}</button></td>
			<td>{{x.message}}</td>
			<td>{{x.created}}</td>
			<td>{{x.author}}</td>
			<td><button ng-click="deleteMessage(x.id);">{{x.id}}</button></td>
		</tr>
	<%=endTable() %>
	<br>
	<div ng-if="flag">
		<%=beginTable(  ) %>
			<tr>
				<th>id</th>
				<th>message</th>
				<th>created</th>
				<th>author</th>
				<th>Update me</th>
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
				<td><button ng-click="updateMessage(myWelcome1)";>Update</button></td>
			</tr>
		<%=endTable() %>
	</div>
</div>
