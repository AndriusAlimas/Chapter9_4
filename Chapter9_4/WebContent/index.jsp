<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello Page</title>
</head>
<body>
	<h1>When buying a car, what is most important to you ?</h1>
	<form action="action.jsp" method="POST" >
		<input type="radio" name="userPref" value="performance">Performance<br>
		<input type="radio" name="userPref" value="safety">Safety<br>
		<input type="radio" name="userPref" value="maintanance">Maintanance<br>
		<p>
		<br>
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>