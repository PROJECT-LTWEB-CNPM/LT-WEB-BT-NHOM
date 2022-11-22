<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags"%>

<head>
<link rel="stylesheet" href="./css/styles.css" type="text/css" />
<style>
.main {
	padding: 6rem 0;
	background-color: rgba(245, 245, 245, 0.8);
}
</style>

<title>Group 5 | Bài Tập Nhóm</title>
</head>


<tag:base faviconUrl="${pageContext.request.contextPath}/assets/images/favicon.ico">
	<%@include file="/header.jsp"%>
	<main class="main">
		<%@include file="/home/slider.jsp"%>
		<%@include file="/home/profiles-section.jsp"%>
		<%@include file="/home/labs-section.jsp"%>
	</main>
	<%@include file="/footer.jsp"%>
</tag:base>

