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

	<h1>Download registration</h1>

	<p>To register for our downloads, enter your name and email address
		below. Then, click on the Submit button.</p>

	<form action="download" method="post">
		<input type="hidden" name="action" value="registerUser"> <label
			class="pad_top">Email:</label> <input type="email" name="email"
			value="${user.email}"><br> <label class="pad_top">
			Name:</label> <input type="text" name="name" value="${user.name}"><br>
		<label class="pad_top">Password:</label> <input type="text"
			name="password" value="${user.password}"><br> <label>&nbsp;</label>
		<input type="submit" value="Register" class="margin_left">
	</form>

</body>

</html>

