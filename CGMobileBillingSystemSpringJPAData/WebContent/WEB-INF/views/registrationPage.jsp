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
	<h2>Enroll your details</h2>
	<table>
		<form:form action="registerCustomer" method="post" modelAttribute="customer">
		
		<tr>
			<td>First Name:</td>
			<td><form:input path="firstName" size="30"/> </td>
			<td><form:errors path="firstName" cssClass="error"/></td>
		</tr>
		<tr>
			<td>last Name: </td>
			<td><form:input path="lastName" size="30"/> </td>
			<td><form:errors path="lastName" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Email Id: </td>
			<td><form:input path="emailID" size="30"/> </td>
			<td><form:errors path="emailID" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Date of Birth</td>
			<td><form:input path="dateOfBirth" size="30"/> </td>
			<td><form:errors path="dateOfBirth" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Billing Address City</td>
			<td><form:input path="BillingAddress.city" size="30"/> </td>
			<td><form:errors path="BillingAddress.city" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Billing Address State</td>
			<td><form:input path="BillingAddress.state" size="30"/> </td>
			<td><form:errors path="BillingAddress.state" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Billing Address Pincode</td>
			<td><form:input path="BillingAddress.pinCode" size="30"/> </td>
			<td><form:errors path="BillingAddress.pinCode" cssClass="error"/></td>
		</tr>
		<tr>
			<td><input type="submit" value="Submit"></td>
		</tr>
		</form:form>
	</table>
</div>
</body>
</html>
