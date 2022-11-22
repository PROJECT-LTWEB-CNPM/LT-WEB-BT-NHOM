<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags"%>
<head>
<link rel="stylesheet" href="../css/styles.css" type="text/css" />
<style>
.main {
	margin: 10rem 0 4rem 0;
}
</style>
<title>404 Not Found</title>

</head>

<tag:base>
	<%@include file="../header.jsp"%>
	<main class="main">
		<div class="container">
			<div class="error">
				<h1>Something Was Wrong</h1>
				<a href="${pageContext.request.contextPath}/"
					class="btn btn-primary" style="font-size: 1.4rem;">Quay lại
					trang chủ</a>
			</div>
		</div>
	</main>
</tag:base>