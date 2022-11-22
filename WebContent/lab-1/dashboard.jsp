<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="tag" tagdir="/WEB-INF/tags"%>

<head>
<link rel="stylesheet" href="../css/styles.css" type="text/css" />
<title>Lab - 1 | Week 01!!!</title>
<style>
.main {
	margin-top: 10rem;
	margin-bottom: 4rem;
	min-height: 50vh;
}

.acc-info {
	margin: 1.5rem 0;
	display: flex;
	flex-direction: column;
	gap: 0.5rem;
}

.acc-info__item-label {
	min-width: 12rem;
	display: inline-block;
}

.btn-back {
	font-size: 1.4rem !important;
}
</style>
</head>


<tag:base>
	<%@include file="/header.jsp"%>
	<main class="main">
		<div class="container">
			<h1>Wellcome to my Web page!</h1>
			<div class="acc-info">
				<div class="acc-info__item">
					<span class="acc-info__item-label">Display name:</span> <span>Đỗ
						Dương Thái Tuấn</span>
				</div>
				<div class="acc-info__item">
					<span class="acc-info__item-label">Email:</span> <span>doduongthaituan201102@gmail.com</span>
				</div>
			</div>
			<a href="${pageContext.request.contextPath}/"
				class="btn btn-primary btn-back">Quay lại trang chủ</a>
		</div>
	</main>
	<%@include file="/footer.jsp"%>
</tag:base>
l
