<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My page</title>
</head>
<body>
<%-- We set session attribute from request getParameter, because we want use it later on session scope --%>
<% session.setAttribute("userPref", request.getParameter("userPref")); %>

<%-- There is no way to do exactly what we want using <c:if> tag, because it doesn't have an else: --%>

</body>
</html>