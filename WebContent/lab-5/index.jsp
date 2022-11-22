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
	<h1>Join our email list</h1>
	<p>To join our email list, enter your name and email address below.</p>
	<jsp:useBean id="user" scope="session" class="models.User" />
	<form action="emailList" method="post">
		<input type="hidden" name="action" value="add"> <label
			class="pad_top">Email:</label> <input type="email" name="email"
			value="<jsp:getProperty name="user" property="email"/>"><br>

		<label class="pad_top">Name:</label> <input type="text" name="name"
			value="<jsp:getProperty name="user" property="name"/>"><br>

		<label class="pad_top">Password: </label> <input type="text"
			name="password"
			value="<jsp:getProperty name="user" property="password"/>"><br>
		<label>&nbsp;</label> <input type="submit" value="Join Now"
			class="margin_left">
	</form>
	<a href="${pageContext.request.contextPath}/"
		style="display: block; margin-top: 10px"><button>Quay lại</button></a>
</body>
</html>