<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<head>
<title>Murach's Java Servlets and JSP</title>
<link rel="stylesheet" href="../css/styles.css" type="text/css" />
</head>

<tag:base>
	<%@include file="../header.jsp"%>
	<main class="main">
		<div class="container">
			<%@include file="./survey.jsp"%>
		</div>
	</main>
	<%@include file="../footer.jsp"%>
</tag:base>