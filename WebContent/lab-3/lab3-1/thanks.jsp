<%@page import="models.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags"%>

<head>
<link rel="stylesheet" href="../../css/styles.css" type="text/css" />
<title>Bài Thực Hành 5.1</title>
<style>
.main {
	margin-top: 10rem;
	margin-bottom: 6rem;
}

.btn-back {
	font-size: 1.4rem !important;
}

.h1 {
	font-size: 140%;
	color: teal;
	margin-bottom: .5em;
}

.h2 {
	font-size: 120%;
	color: teal;
	margin-bottom: .5em;
}

.label {
	float: left;
	width: 7em;
	margin-bottom: 0.5em;
	font-weight: bold;
}

.input, .input { /* An attribute selector */
	width: 15em;
	margin-left: 0.5em;
	margin-bottom: 0.5em;
}

.span {
	margin-left: 0.5em;
	margin-bottom: 0.5em;
}

.br {
	clear: both;
}

/* The styles for the classes */
.pad_top {
	padding-top: 0.25em;
}

.margin_left {
	margin-left: 0.5em;
}

.content {
	margin-bottom: 2rem;
}
</style>
</head>


<tag:base>
	<%@include file="/header.jsp"%>
	<main class="main">
		<div class="container">
			<div class="content">
				<h1 class="h1">Thanks for joining our email list</h1>

				<p>Here is the information that you entered:</p>
				<label class="label">Name:</label> <span class="span">${user.name}</span><br
					class="br" /> <label class="label">Email:</label> <span
					class="span">${user.email}</span><br class="br" /> <label
					class="label">Password:</label> <span class="span">${user.password}</span><br
					class="br" />
				<p>To enter another email address, click on the Back button in
					your browser or the Return button shown below.</p>
				<form action="" method="post">
					<input type="hidden" name="action" value="join"> <input
						type="submit" value="Return">
				</form>
			</div>
			<a href="${pageContext.request.contextPath}/"
				class="btn btn-primary btn-back">Quay lại trang chủ</a>
		</div>
	</main>
	<%@include file="/footer.jsp"%>
</tag:base>
>
