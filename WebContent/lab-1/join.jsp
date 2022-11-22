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
	margin-bottom: 6rem;
}

.form-control {
	font-size: 1.4rem !important;
	padding: 0.5rem 1rem !important;
	border-radius: 0.4rem !important;
}

.btn-submit {
	font-size: 1.4rem !important;
	padding: 0.4rem 1.5rem !important;
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
			<div class="row justify-content-center">
				<div class="col-3">
					<h1>Join With Us!</h1>
					<span style="color: red">${message}</span>
					<form action="join" method="POST">
						<!-- Username input -->
						<div class="form-outline mb-4">
							<label class="form-label" for="fullname">Fullname</label> <input
								type="text" id="fullname" class="form-control" name="fullname"
								placeholder="Enter your fullname..." />
						</div>
						<!-- Email input -->
						<div class="form-outline mb-4">
							<label class="form-label" for="email">Email address</label> <input
								type="email" id="email" class="form-control" name="email"
								placeholder="Enter your email..." />
						</div>

						<!-- Password input -->
						<div class="form-outline mb-4">
							<label class="form-label" for="password">Password</label> <input
								type="password" id="password" class="form-control"
								name="password" placeholder="Enter your password..." />
						</div>

						<!-- Submit button -->
						<button type="submit"
							class="btn btn-primary btn-block mb-4 btn-submit">Join
							now</button>
					</form>
				</div>


			</div>
			<a href="${pageContext.request.contextPath}/" class="btn btn-primary btn-back">Quay lại trang chủ</a>
		</div>

	</main>
	<%@include file="/footer.jsp"%>
</tag:base>
