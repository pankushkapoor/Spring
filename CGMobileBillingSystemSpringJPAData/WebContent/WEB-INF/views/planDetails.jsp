<%@page import="com.cg.mobilebilling.beans.PostpaidAccount"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Plan Details</title>
</head>

<body align="center">
<%PostpaidAccount account =(PostpaidAccount)request.getSession().getAttribute("account");
%>
<h4>${account.plan}</h4>
<%-- <h2>Your mobile number is ${customer. }</h2>--%>
<h2>Click <a href="planRegistration">here</a> to change Plan</h2>
</body>
</html>