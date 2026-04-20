<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>

<%
String name = request.getParameter("uname");
String timeStr = request.getParameter("time");

// Convert expiry time to integer
int time = Integer.parseInt(timeStr);

// Store in session
session.setAttribute("user", name);

// Set session expiry time
session.setMaxInactiveInterval(time);
%>

<h2>Hello <%= name %>!</h2>

<p>Session has started.</p>
<p>Your name is stored in session.</p>
<p>Session expiry time is set to <b><%= time %> seconds</b>.</p>

<p>
Click below within the given time OR wait to test session expiry:
</p>

<a href="second.jsp">Check Session</a>

</body>
</html>