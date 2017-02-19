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
<!-- First VERSION  -->
<h1>FIRST VERSION using &ltc:if&gt:</h1>
<%-- We set session attribute from request getParameter, because we want use it later on session scope --%>
<% session.setAttribute("userPref", request.getParameter("userPref")); %>

<%-- There is no way to do exactly what we want using <c:if> tag, because it doesn't have an else: --%>
<c:if test="${userPref == 'performance'}" > <%-- if has attribute test, very important test= and what we testing --%>
	<h3>Now you can stop even if you <em>do</em> drive insanely fast..</h3><%--this is if true --%>
</c:if><%-- we dont have false, false is after if but you dont have if else like normal --%>

<c:if test="${userPref == 'safety' }" >
	<h3>Our brakes won't lock up no matter how bad a driver you are.</h3>
</c:if>
 
<c:if test="${userPref == 'maintanance' }" >
	<h3>Lost your tech job? No problem--you won't have to service these brakes for at least three years.</h3>
</c:if>
<br>
 <%-- Continue with the rest of the page that EVERYONE should see --%>
 </h3><jsp:include page="brakes.jsp" />
 
 <!-- Second VERSION -->
 <h1>SECOND VERSION using jsp scripting:</h1>
 <h3>
 <%-- Now we use JSP with scripting, and it does what we want --%>
 <% String pref = (String)session.getAttribute("userPref");
 	  if(pref.equals("performance")){
 		  out.println("Now you can stop even if you <em>do</em> drive insanely fast..");
 	  }else if (pref.equals("safety")){
 		  out.println("Our brakes won't lock up no matter how bad a driver you are.");
 	  }else if (pref.equals("maintanance")){
 		  out.println("Lost your tech job? No problem--you won't have to service these brakes " +
 				  "for at least three years.");
 	  }else {
 		  // This what we cannot do with <c:if> tag userPref doesn't match those, so print the default headline
 		  out.println("Our brakes are the best.");
 	  }
 %>
 </h3><jsp:include page="brakes.jsp" />
 
 <!--  Third VERSION -->
 <h1>THIRD VERSION using &ltc:choose&gt tag and its partners &ltc:when&gt and &ltc:otherwise&gt:</h1>
 <%-- First thing its like if else scripting but not like switch statement no fall - through --%>
 
 <h3>
 	<c:choose><%-- you have to choose if you want to use if else structure --%>
 		<c:when test="${userPref == 'performance'}" > <%-- is like if, have attribute same test= what to test --%>
 			Now you can stop even if you <em>do</em> drive insanely fast..
 		</c:when>
 		
 		<c:when test="${userPref == 'safety'}" > <%-- like if else[if second time] --%>
 		    Our brakes won't lock up no matter how bad a driver you are.
 		</c:when>
 		
 		<c:when test="${userPref == 'maintanance'}" >
 		    Lost your tech job? No problem--you won't have to service these brakes for at least three years.
 		</c:when>
 		
 		<c:otherwise><%-- If none of the <c:when> tests are true, the <c:otherwise> runs as default same like else --%>
 			Our brakes are the best.
 		</c:otherwise>
 	</c:choose>
 </h3><jsp:include page="brakes.jsp" />
 
</body>
</html>