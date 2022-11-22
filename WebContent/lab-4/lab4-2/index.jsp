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
	<form action="survey" method="post">
		<h1>Survey</h1>
		<p>If you have a moment, we'd appreciate it if you would fill out
			this survey.</p>

		<h2>Your information:</h2>
		<label class="pad_top">First Name</label> <input type="text"
			name="firstName" required><br> <label class="pad_top">Last
			Name</label> <input type="text" name="lastName" required><br> <label
			class="pad_top">Email</label> <input type="email" name="email"
			required><br>

		<h2>How did you hear about us?</h2>
		<p>
			<input type=radio name="heardFrom" value="Search Engine">Search
			engine <input type=radio name="heardFrom" value="Friend">Word
			of mouth <input type=radio name="heardFrom" value="Other">Other
		</p>

		<h2>Would you like to receive announcements about new CDs and
			special offers?</h2>
		<p>
			<input type="checkbox" name="wantsUpdates" checked>YES, I'd
			like that.
		</p>

		<p>
			Please contact me by: <select name="contactVia">
				<option value="Both" selected>Email or postal mail</option>
				<option value="Email">Email only</option>
				<option value="Postal Mail">Postal mail only</option>
			</select>
		</p>

		<input type="submit" value="Submit">
	</form>
	<a href="${pageContext.request.contextPath}/"
		style="display: block; margin-top: 10px">
		<button>Quay lại</button>
	</a>
</body>
</html>