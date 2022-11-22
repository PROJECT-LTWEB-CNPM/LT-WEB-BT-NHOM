<%@page import="java.util.Arrays"%>
<%@page import="models.Lab"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<head>
<style>
.card {
	border: none !important;
}

.heading {
	font-weight: 700;
	position: relative;
	width: fit-content;
	color: var(- -primary-color);
}

.heading::after {
	content: "";
	position: absolute;
	left: 0;
	bottom: -4px;
	width: 100%;
	height: 2px;
	background-color: var(- -primary-color);
	position: absolute;
	border-radius: 4px;
}

.btn {
	font-size: 1.4rem !important;
}

.btn:focus {
	border: 1px solid transparent;
	box-shadow: none !important;
}
</style>
</head>

<jsp:useBean id="labData" scope="page" class="utils.LabData" />
<%
List<Lab> labs = labData.getLabs();
List<String> labNames = Arrays.asList("lab1", "lab2", "lab3", "lab3", "lab3", "lab3", "lab3", "lab3", "lab3", "lab3",
		"lab3", "lab3", "lab3", "lab3", "final");
String baseUrl = "https://raw.githubusercontent.com/DODUONGTHAITUAN/images/main/";
%>

<section class="section">
	<div class="container">
		<div class="d-flex justify-content-center mb-4">
			<h1 class="heading">BÀI TẬP THỰC HÀNH</h1>
		</div>
		<div class="row mb-4">
			<%
			for (int i = 0; i < labs.size(); i += 1) {
			%>
			<div class="col-xl-3 col-lg-4 col-md-6 mb-4">
				<div class="card">
					<img src="<%=baseUrl + labNames.get(i) + ".jpg"%>"
						class="card-img-top" style="width: 100%"
						alt="Fissure in Sandstone" />
					<div class="card-body">
						<h2 class="card-title"><%=labs.get(i).title%></h2>
						<p class="card-text"><%=labs.get(i).desc%></p>
						<a href="<%=labs.get(i).path%>"
							target="<%=(i == labs.size() - 1) ? "_blank" : "_self"%>"
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

<!-- src="https://mdbcdn.b-cdn.net/img/new/standard/nature/184.webp" -->