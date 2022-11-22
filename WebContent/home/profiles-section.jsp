<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="utils.UserData"%>
<%@page import="models.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<head>
<style>
.section {
	margin-top: 8rem;
}

.heading {
	font-weight: 700;
	position: relative;
	width: fit-content;
	color: var(--primary-color);
}

.heading::after {
	content: "";
	position: absolute;
	left: 0;
	bottom: -4px;
	width: 100%;
	height: 2px;
	background-color: var(--primary-color);
	position: absolute;
	border-radius: 4px;
}

.btn {
	font-size: 1.3rem !important;
}

.btn:focus {
	border: 1px solid transparent;
	box-shadow: none !important;
}

.card {
	border-radius: 1rem;
	box-shadow: 0 0 10px rgba(0, 0, 0, 10%);
	transition: all linear 0.2s;
	border: none !important;
	height: 100%;
}

.card:hover {
	box-shadow: 0 0 10px rgba(0, 0, 0, 30%);
}

.card-img-top {
	border-top-left-radius: 1rem;
	border-top-right-radius: 1rem;
	border: none;
	height: 313px;
	object-fit: cover;
}

.card-body {
	display: flex;
	flex-direction: column;
}

.card-title {
	font-weight: 600;
	font-size: 2.2rem;
	text-transform: capitalize !important;
}

.card-text {
	font-weight: 500;
	display: -webkit-box;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
	overflow: hidden;
	padding-bottom: 1.5rem;
	margin-bottom: auto;
}

.btn-detail {
	padding: 0.5rem 1rem;
	display: block;
}
</style>
</head>

<jsp:useBean id="userData" scope="page" class="utils.UserData" />
<%
List<User> users = userData.getUsers();
List<String> names = Arrays.asList("duy", "tuan", "truong", "anh");
String url = "https://raw.githubusercontent.com/DODUONGTHAITUAN/images/main/";
%>

<section class="section">
	<div class="container">
		<div class="d-flex justify-content-center mb-4">
			<h1 class="heading">THÀNH VIÊN NHÓM</h1>
		</div>
		<div class="row mb-4">
			<%
			for (int i = 0; i < users.size(); i += 1) {
			%>
			<div class="col-xl-3 col-lg-4 col-md-6 mb-4">
				<div class="card card-info">
					<img src="<%=url + names.get(i) + ".jpg"%>" class="card-img-top"
						style="height: 313px; object-fit: cover;"
						alt="Fissure in Sandstone" />
					<div class="card-body">
						<h3 class="card-title"><%=users.get(i).name%></h3>
						<p class="card-text">
							MSSV:
							<%=users.get(i).id%></p>
						<a href="<%=users.get(i).urlInfo%>" target="_blank"
							class="btn btn-primary btn-detail">Xem chi tiết</a>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
	</div>
</section>
