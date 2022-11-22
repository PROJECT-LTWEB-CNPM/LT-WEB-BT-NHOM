<%@page import="models.Lab"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>

<style>
.header {
	z-index: 999;
}

.logo a {
	font-size: 2rem;
}
/* Style The Dropdown Button */
.dropbtn {
	border: none;
	cursor: pointer;
	display: flex;
	align-items: center;
	gap: 4px;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
	position: relative;
	display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 20rem;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {
	background-color: #f1f1f1
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
	display: block;
}
</style>
</head>


<jsp:useBean id="labData2" scope="page" class="utils.LabData" />
<c:set var="context" value="${pageContext.request.contextPath}"
	scope="request" />
<%
List<Lab> labs2 = labData2.getLabs();
%>

<!-- header -->
<header class="header">
	<!-- Navbar -->
	<nav
		class="navbar navbar-expand-lg navbar-light bg-white container navbar-container">
		<div class="container-fluid">
			<div class="collapse navbar-collapse" id="navbarExample01">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 nav-list">
					<li class="nav-item logo"><a class="nav-link"
						style="font-weight: 700 !important" aria-current="page"
						href="${context}/">&lt; GROUP5 /&gt;</a></li>
					<li class="nav-item dropdown"><a class="nav-link dropbtn"
						href="#"><span> Bài tập</span><i class="fas fa-chevron-down"></i></a>
						<div class="dropdown-content">
							<%
							for (int i = 0; i < 4; i++) {
								String url = labs2.get(i).path;
								if (i != labs2.size() - 1) {
									url = request.getAttribute("context") + "/" + url;
								}
							%>
							<a href="<%=url%>" style="text-transform: capitalize;"
								target="<%=(i == labs2.size() - 1) ? "_blank" : "_self"%>"><%=labs2.get(i).title%></a>
							<%
							}
							%>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="#">Về chúng
							tôi</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Navbar -->
</header>