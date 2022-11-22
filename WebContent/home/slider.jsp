
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<head>
<style>
.swiper {
	height: 40rem;
}

.swiper-image {
	width: 100%;
}
</style>
</head>

<%
List<String> urls = Arrays.asList("java1", "java2", "java3", "java4");
String ex = ".png";
%>

<!-- Slider main container -->
<div class="swiper">
	<!-- Additional required wrapper -->
	<div class="swiper-wrapper">
		<!-- Slides -->
		<%
		for (int i = 0; i < 4; i++) {
		%>
		<div class="swiper-slide">
			<img class="swiper-image" style="object-fit: cover"
				src="${pageContext.request.contextPath}/assets/images/<%=urls.get(i) + ex %>"
				alt="" />
		</div>
		<%
		}
		%>
	</div>
	<!-- If we need pagination -->
	<div class="swiper-pagination"></div>

	<!-- If we need navigation buttons -->
	<div class="swiper-button-prev"></div>
	<div class="swiper-button-next"></div>
</div>
