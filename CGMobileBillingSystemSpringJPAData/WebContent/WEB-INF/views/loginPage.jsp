<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page session="true" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style>
	.error{
		color:red;
		font-weight: bold;
	}
</style>
</head>
<body>
<div align="center">
	<h2>Login</h2>
	<table>
		<form:form action="loginCustomer" method="post" >
		
		<tr>
			<td>Enter your Mobile Number : </td>
			<td><input name="mobileNo" size="30"/> </td>
			<%-- <td><form:errors path="mobileNo" cssClass="error"/></td> --%>
		</tr>
		<tr>
		<td><input type="submit" value="Login"></td>
		</tr>
		</form:form>
	</table>
</div>
</body>
</html>
