<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Murach's Java Servlets and JSP</title>
<link rel="stylesheet" href="styles/main.css" type="text/css" />
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

	<h1>Downloads</h1>

	<h2>86 (the band) - True Life Songs and Pictures</h2>

	<table>
		<tr>
			<th>Song title</th>
			<th>Audio Format</th>
		</tr>
		<tr>
			<td>You Are a Star</td>
			<td><a href="/musicStore/sound/${productCode}/star.mp3">MP3</a></td>
		</tr>
		<tr>
			<td>Don't Make No Difference</td>
			<td><a href="/musicStore/sound/${productCode}/no_difference.mp3">MP3</a></td>
		</tr>
	</table>

	<p>
		<a href="?action=viewAlbums">View list of albums</a>
	</p>

	<p>
		<a href="?action=viewCookies">View all cookies</a>
	</p>

</body>
</html>