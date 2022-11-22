<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<head>
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

<%@include file="/lab-4/lab4-1/includes/header.jsp"%>
<h1>Join our email list</h1>
<p>To join our email list, enter your name and email address below.</p>

<c:if test="${message != null}">
	<p>
		<i>${message}</i>
	</p>
</c:if>

<form action="emailList1" method="post">
	<input type="hidden" name="action" value="add"> <label
		class="pad_top">Email:</label> <input type="email" name="email"
		value="${user.email}"><br> <label class="pad_top">
		Name:</label> <input type="text" name="fullName" value="${user.name}"><br>
	<label class="pad_top">Password:</label> <input type="text"
		name="password" value="${user.password}"><br> <label>&nbsp;</label>
	<input type="submit" value="Join Now" class="margin_left">
</form>

<a href="${pageContext.request.contextPath}/">
	<button>Quay lại</button>
</a>
<%@include file="/lab-4/lab4-1/includes/footer.jsp"%>