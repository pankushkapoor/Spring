<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<style>
	.error{
		color:red;
		font-weight: bold;
	}
</style>
</head>
<body>
<div align="center">
	<h2>Generate your bill</h2>
	<table>
		<form:form action="generate" method="post" modelAttribute="bill">
		
		<tr>
			<td>noOfLocalSMS:</td>
			<td><form:input path="noOfLocalSMS" size="30"/> </td>
			<td><form:errors path="noOfLocalSMS" cssClass="error"/></td>
		</tr>
		<tr>
			<td>noOfStdSMS: </td>
			<td><form:input path="noOfStdSMS" size="30"/> </td>
			<td><form:errors path="noOfStdSMS" cssClass="error"/></td>
		</tr>
		<tr>
			<td>noOfLocalCalls: </td>
			<td><form:input path="noOfLocalCalls" size="30"/> </td>
			<td><form:errors path="noOfLocalCalls" cssClass="error"/></td>
		</tr>
		<tr>
			<td>noOfStdCalls</td>
			<td><form:input path="noOfStdCalls" size="30"/> </td>
			<td><form:errors path="noOfStdCalls" cssClass="error"/></td>
		</tr>
		<tr>
			<td>internetDataUsageUnits</td>
			<td><form:input path="internetDataUsageUnits" size="30"/> </td>
			<td><form:errors path="internetDataUsageUnits" cssClass="error"/></td>
		</tr>
		<tr>
			<td>billMonth:</td>
			<td><form:input path="billMonth" size="30"/> </td>
			<td><form:errors path="billMonth" cssClass="error"/></td>
		</tr>
		<tr>
			<td><input type="submit" value="Submit"></td>
		</tr>
		</form:form>
	</table>
	
</div>
</body>
</html>
