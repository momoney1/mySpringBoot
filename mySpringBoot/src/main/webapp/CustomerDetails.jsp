<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>View Customer Information</h1>
<h2>Details Submitted As Follows: </h2>
<form action="getDetails" method = "post"> <!-- renders "getDetails" url onto browser after user clicks submit button. Invoking getDetails method in controller -->
	<input type="number" name="cid">
	<input type="submit" name="Submit">
</form>
</body>
</html>