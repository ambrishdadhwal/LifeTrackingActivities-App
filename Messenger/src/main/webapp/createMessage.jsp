<%@ include file="/Utility.jsp"%>
<link rel="stylesheet" href="/Messenger/JS/main.css">
<div ng-controller="MainCtrl1" ng-if="loginFlag">
	<h2>Create A New Message here</h2>
	<form>
		<%=beginTable(  ) %>
			<tr>
				<td>Activity ID:</td>
				<td><input type="text" name="id" ng-model="message1.id"></td>
			</tr>
			<tr>
				<td>Select an Category :</td>
				<td>
					<!-- <input type="text" name="message"
					ng-model="message1.message"> --> <select name="message" ng-model="message1.message">
						<option ng-repeat="x in activitiesList"  name="{{x}}">{{x}}</option>
				</select>
				</td>
			</tr>
			<tr>
				<td>Activiy Description</td>
				<td><input type="text" name="author" ng-model="message1.author"></td>
			</tr>
			<tr>
				<td><button ng-click="createMessage()">SUBMIT</button></td>
			</tr>
		<%=endTable() %>
	</form>
	<p ng-if="flag1">Messsage is created</p>
	<br> {{content}}
</div>
