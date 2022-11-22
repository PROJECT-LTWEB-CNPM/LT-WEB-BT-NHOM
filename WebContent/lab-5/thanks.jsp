<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<h1>Thanks for joining our email list</h1>

	<p>Here is the information that you entered:</p>

	<jsp:useBean id="user" scope="session" class="models.User" />
	<label>Email:</label>
	<span><jsp:getProperty name="user" property="email" /></span>
	<br>
	<label> Name:</label>
	<span><jsp:getProperty name="user" property="name" /></span>
	<br>
	<label>Password:</label>
	<span><jsp:getProperty name="user" property="password" /></span>
	<br>

	<p>To enter another email address, click on the Back button in your
		browser or the Return button shown below.</p>

	<a href="./index.jsp">
		<button>Return</button>
	</a>

</body>
</html>