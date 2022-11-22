<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" href="./survey.css" type="text/css" />
<style>
.survey {
	margin-top: 10rem;
	margin-bottom: 6rem;
}
</style>
</head>

<form action="survey" method="POST" class="survey">
	<img src="./images/murachlogo.jpg" alt="logo" />
	<h1 class="h1">Survey</h1>
	<p>If you have a moment, we'd appreciate it if you would fill out
		this survey.</p>

	<h2 class="h2">Your information:</h2>
	<label class="label">First Name</label> <input class="input"
		type="text" name="firstName" required><br class="br" /> <label
		class="label">Last Name</label> <input class="input" type="text"
		name="lastName" required><br class="br" /> <label
		class="label">Email</label> <input class="input" type="email"
		name="email" required><br class="br" /> <label class="label">Date
		of Birth</label> <input type="text" class="input" name="DoB"><br
		class="br" />

	<h2>How did you hear about us?</h2>
	<p>
		<input type=radio name="heardFrom" value="Social Media">Social
		Media <input type=radio name="heardFrom" value="Search Engine" checked>Search
		engine <input type=radio name="heardFrom" value="Friend">Word
		of mouth <input type=radio name="heardFrom" value="Other">Other
	</p>

	<h2>Would you like to receive announcements about new CDs and
		special offers?</h2>
	<p>
		<input type="checkbox" name="wantsUpdates">YES, I'd like that.
	</p>
	<p>
		<input type="checkbox" name="emailOk">YES, please send me
		email announcements.
	</p>


	<p>
		Please contact me by: <select name="contactVia">
			<option value="Both" selected>Email or postal mail</option>
			<option value="Email">Email only</option>
			<option value="Postal Mail">Postal mail only</option>
		</select>
	</p>

	<input type=submit value="Submit">
</form>