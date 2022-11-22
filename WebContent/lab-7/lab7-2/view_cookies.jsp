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

/* The styles for the tables */
table {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	border: 1px solid black;
	text-align: left;
	padding: .5em;
}

/* The styles for the classes */
.pad_top {
	padding-top: 0.25em;
}

.margin_left {
	margin-left: 0.5em;
}

.align_left {
	text-align: left;
}

.align_right {
	text-align: left;
}
</style>
</head>
<body>

	<h1>Cookies</h1>

	<p>Here's a table with all of the cookies that this browser is
		sending to the current server.</p>

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<table>
		<tr>
			<th>Name</th>
			<th>Value</th>
		</tr>
		<c:forEach var="c" items="${cookie}">
			<tr>
				<td>${c.value.name}</td>
				<td>${c.value.value}</td>
			</tr>
		</c:forEach>
	</table>

	<p>
		<a href="download?action=viewAlbums">View list of albums</a>
	</p>

	<p>
		<a href="download?action=deleteCookies">Delete all persistent
			cookies</a>
	</p>

</body>
</html>