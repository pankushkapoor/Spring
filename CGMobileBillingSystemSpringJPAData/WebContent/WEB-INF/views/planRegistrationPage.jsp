<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Plans Register</title>
<style>
.w3-btn {margin-bottom:10px;}
</style>
</head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body align="center">
	<h2>Plans Available</h2>
	<table class="w3-table-all w3-card-4 w3-hoverable"
		style="height:226px; margin-left:auto; margin-right:auto; width:1000px;" bordercolor="A48585">
			<thead>
			<tr style="height: 74px;">
				<td style="width: 66px; height: 74px;">Plan ID:</td>
				<td style="width: 79px; height: 74px;">Monthly Rent:</td>
				<td style="width: 51px; height: 74px;">Free Local Calls:</td>
				<td style="width: 49px; height: 74px;">Free STD Calls:</td>
				<td style="width: 51px; height: 74px;">Free Local SMS:</td>
				<td style="width: 45px; height: 74px;">Free STD SMS:</td>
				<td style="width: 63px; height: 74px;">Free Internet Data:</td>
				<td style="width: 57px; height: 74px;">Local Call Rate:</td>
				<td style="width: 61px; height: 74px;">STD Call Rate:</td>
				<td style="width: 53px; height: 74px;">Local SMS Rate:</td>
				<td style="width: 47px; height: 74px;">STD SMS Rate:</td>
				<td style="width: 86px; height: 74px;">Internet Data Rate:</td>
				<td style="width: 59px; height: 74px;">Plan Circle:</td>
				<td style="width: 66px; height: 74px;">Plan Name:</td>
			</tr>
			</thead>
			<tr style="height: 39px;">
				<td style="width: 66px; height: 39px;">147</td>
				<td style="width: 79px; height: 39px;">250</td>
				<td style="width: 51px; height: 39px;">200</td>
				<td style="width: 49px; height: 39px;">150</td>
				<td style="width: 51px; height: 39px;">500</td>
				<td style="width: 45px; height: 39px;">500</td>
				<td style="width: 63px; height: 39px;">1024</td>
				<td style="width: 57px; height: 39px;">1</td>
				<td style="width: 61px; height: 39px;">1.5</td>
				<td style="width: 53px; height: 39px;">1</td>
				<td style="width: 47px; height: 39px;">2</td>
				<td style="width: 86px; height: 39px;">0.10</td>
				<td style="width: 59px; height: 39px;">GOA</td>
				<td style="width: 66px; height: 39px;">G250</td>
			</tr>
			<tr style="height: 51px;">
				<td style="width: 66px; height: 51px;">151</td>
				<td style="width: 79px; height: 51px;">250</td>
				<td style="width: 51px; height: 51px;">300</td>
				<td style="width: 49px; height: 51px;">200</td>
				<td style="width: 51px; height: 51px;">500</td>
				<td style="width: 45px; height: 51px;">300</td>
				<td style="width: 63px; height: 51px;">1024</td>
				<td style="width: 57px; height: 51px;">1</td>
				<td style="width: 61px; height: 51px;">1.5</td>
				<td style="width: 53px; height: 51px;">1</td>
				<td style="width: 47px; height: 51px;">2</td>
				<td style="width: 86px; height: 51px;">0.10</td>
				<td style="width: 59px; height: 51px;">Punjab</td>
				<td style="width: 66px; height: 51px;">P150</td>
			</tr>
			<tr style="height: 39px;">
				<td style="width: 66px; height: 39px;">150</td>
				<td style="width: 79px; height: 39px;">400</td>
				<td style="width: 51px; height: 39px;">250</td>
				<td style="width: 49px; height: 39px;">250</td>
				<td style="width: 51px; height: 39px;">800</td>
				<td style="width: 45px; height: 39px;">500</td>
				<td style="width: 63px; height: 39px;">2048</td>
				<td style="width: 57px; height: 39px;">1</td>
				<td style="width: 61px; height: 39px;">1.5</td>
				<td style="width: 53px; height: 39px;">1</td>
				<td style="width: 47px; height: 39px;">2</td>
				<td style="width: 86px; height: 39px;">0.10</td>
				<td style="width: 59px; height: 39px;">Rajasthan</td>
				<td style="width: 66px; height: 39px;">R250</td>
			</tr>
			<tr style="height: 39px;">
				<td style="width: 66px; height: 39px;">147</td>
				<td style="width: 79px; height: 39px;">250</td>
				<td style="width: 51px; height: 39px;">200</td>
				<td style="width: 49px; height: 39px;">150</td>
				<td style="width: 51px; height: 39px;">500</td>
				<td style="width: 45px; height: 39px;">500</td>
				<td style="width: 63px; height: 39px;">1024</td>
				<td style="width: 57px; height: 39px;">1</td>
				<td style="width: 61px; height: 39px;">1.5</td>
				<td style="width: 53px; height: 39px;">1</td>
				<td style="width: 47px; height: 39px;">2</td>
				<td style="width: 86px; height: 39px;">0.10</td>
				<td style="width: 59px; height: 39px;">GOA</td>
				<td style="width: 66px; height: 39px;">G250</td>
			</tr>
	</table>
	<p>&nbsp;</p>
	<div align="center">
		<h2>Select your Plan</h2>
		<table>
			<form:form action="registerPlan" method="post" modelAttribute="plan">
				<tr>
					<td>Plan Id</td>
					<td><form:input path="planID" size="30" /></td>
					<td><form:errors path="planID" cssClass="error" /></td>
				</tr>
				</table>
					<input class="w3-btn w3-black w3-border" type="submit" value="Submit">
			</form:form>
		
	</div>
</body>
</html>