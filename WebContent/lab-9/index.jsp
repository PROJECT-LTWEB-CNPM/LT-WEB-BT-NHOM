<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Murach's Java Servlets and JSP</title>
<link rel="stylesheet" href="styles/main.css" type="text/css" />
<style type="text/css">
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
</style>
</head>
<body>
	<h1>Join our email list</h1>
	<p>To join our email list, enter your name and email address below.</p>
	<p>
		<i>${message}</i>
	</p>
	<form action="email-list" method="post">
		<input type="hidden" name="action" value="join"> <label
			class="pad_top">Email:</label> <input type="email" name="email"
			value="${user.getEmail()}"><br> <label class="pad_top">First
			Name:</label> <input type="text" name="firstName" value="${user.getFirstName()}"><br>
		<label class="pad_top">Last Name:</label> <input type="text"
			name="lastName" value="${user.getLastName()}"><br> <label>&nbsp;</label>
		<input type="submit" value="Join Now" class="margin_left">
	</form>
</body>
</html>