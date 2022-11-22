<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<style>
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

<h1>Thanks for taking our survey</h1>

<p>Here is the information that you entered:</p>
<label>Email:</label>
<span>${user.email}</span>
<br>
<label>First Name:</label>
<span>${user.firstName}</span>
<br>
<label>Last Name:</label>
<span>${user.lastName}</span>
<br>
<label>Heard From:</label>
<span>${user.heardFrom}</span>
<br>
<label>Updates:</label>
<span>${user.updates}</span>
<br>
<label>Contact Via:</label>
<span>${user.contactVia}</span>
<br>

<a href="./index.jsp">
	<button>Return</button>
</a>
