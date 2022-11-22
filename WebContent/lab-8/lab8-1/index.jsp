<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Murach's Java Servlets and JSP</title>
<style>
/* The styles for the elements */
body {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 85%;
	margin-left: 2em;
	margin-right: 2em;
	width: 400px;
}

h1 {
	font-size: 140%;
	color: teal;
	margin-bottom: .5em;
}

h2 {
	font-size: 120%;
	color: teal;
	margin-bottom: .5em;
}

label {
	float: left;
	width: 7em;
	margin-bottom: 0.5em;
	font-weight: bold;
}

input[type="text"], input[type="email"] { /* An attribute selector */
	width: 15em;
	margin-left: 0.5em;
	margin-bottom: 0.5em;
}

span {
	margin-left: 0.5em;
	margin-bottom: 0.5em;
}

br {
	clear: both;
}

/* The styles for the classes */
.pad_top {
	padding-top: 0.25em;
}

.margin_left {
	margin-left: 0.5em;
}

/* The styles for the tables */
table {
	border: 1px solid black;
	border-collapse: collapse;
	width: 50em;
}

th, td {
	border: 1px solid black;
	text-align: left;
	padding: .5em;
}

.right {
	text-align: right;
}
</style>
</head>
<body>

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:if test="${sqlStatement == null}">
		<c:set var="sqlStatement" value="select * from User" />
	</c:if>

	<h1>The SQL Gateway</h1>
	<p>Enter an SQL statement and click the Execute button.</p>

	<p>
		<b>SQL statement:</b>
	</p>
	<form action="sqlGateway" method="post">
		<textarea name="sqlStatement" cols="60" rows="8">${sqlStatement}</textarea>
		<input type="submit" value="Execute">
	</form>
	<div style="margin-bottom: 10px"></div>
	<a href="${pageContext.request.contextPath}/"><button>Home</button></a>
	<p>
		<b>SQL result:</b>
	</p>
	${sqlResult}
</body>
</html>