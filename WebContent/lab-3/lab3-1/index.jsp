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
				<h1 class="h1">Join our email list</h1>
				<p>To join our email list, enter your name and email address
					below.</p>
				<p>
					<i>${message}</i>
				</p>
				<form action="emailList" method="post">
					<input type="hidden" name="action" value="add"> <label
						class="pad_top label">Name:</label> <input type="text" name="name"
						value="${user.name}" class="input" /> <br class="br" /> <label
						class="pad_top label">Email:</label> <input type="email"
						name="email" value="${user.email}" class="input"><br
						class="br" /> <label class="pad_top label"> Password:</label> <input
						type="password" name="password" value="${user.password}"
						class="input"> <br class="br" /> <label>&nbsp;</label> <input
						type="submit" value="Join Now">
				</form>
			</div>
			<a href="${pageContext.request.contextPath}/"
				class="btn btn-primary btn-back">Quay lại trang chủ</a>
		</div>

	</main>
	<%@include file="/footer.jsp"%>
</tag:base>
