<%@ include file="/Utility.jsp"%>
<link rel="stylesheet" href="/Messenger/JS/main.css">
<div ng-controller="MyProfileCtrl" ng-if="loginFlag">


<h2>Your Details</h2>
	<table id="maintable">
		<tr>
			<td>UserName</td>
			<td>{{userDetails.username}}</td>
		</tr>
		<tr>
			<td>First Name</td>
			<td>{{userDetails.fName}}</td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td>{{userDetails.lName}}</td>
		</tr>
		<tr>
			<td>Profile Name</td>
			<td>{{userDetails.pName}}</td>
		</tr>
	</table>

	<h2>Number of Friends are : {{profileCount[0]}}</h2>
	<h2>Number of Activities are : {{profileCount[1]}}</h2>
</div>