<%@page import="java.sql.Date"%>
<%@page import="javax.xml.crypto.Data"%>
<%@page import="models.Lab"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<jsp:useBean id="labData3" scope="page" class="utils.LabData" />
<c:set var="context" value="${pageContext.request.contextPath}"
	scope="request" />
<%
List<Lab> labs3 = labData3.getLabs();
%>

<!-- Footer -->
<footer class="text-center text-lg-start bg-light text-muted footer">
	<!-- Section: Social media -->
	<section class="border-bottom">
		<div
			class="d-flex justify-content-center justify-content-lg-between p-4 container">
			<!-- Left -->
			<div class="me-5 d-none d-lg-block">
				<span>Liên hệ với nhóm:</span>
			</div>
			<!-- Left -->

			<!-- Right -->
			<div>
				<a href="" class="me-4 text-reset"> <i class="fa-solid fa-house"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-twitter"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-google"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-instagram"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-linkedin"></i>
				</a> <a href="" class="me-4 text-reset"> <i class="fab fa-github"></i>
				</a>
			</div>
			<!-- Right -->
		</div>
	</section>
	<!-- Section: Social media -->

	<!-- Section: Links  -->
	<section class="">
		<div class="container text-center text-md-start mt-5">
			<!-- Grid row -->
			<div class="row mt-3">
				<!-- Grid column -->
				<div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
					<!-- Content -->
					<h4 class="text-uppercase fw-bold mb-4">
						<i class="fas fa-globe"></i> LẬP TRÌNH WEBSITE
					</h4>
					<p>Website được thiết kế để thực hiện các bài thực hành và lưu
						kết quả của nhóm.</p>
				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
					<!-- Links -->
					<h4 class="text-uppercase fw-bold mb-4">về chúng tôi</h4>
					<p>
						<a href="https://www.facebook.com/anh.hoang.me" target="_blank"
							class="text-reset">Vũ Hoàng Anh</a>
					</p>
					<p>
						<a href="https://www.facebook.com/profile.php?id=100074494187529"
							target="blank" class="text-reset">Bùi Thanh Duy</a>
					</p>
					<p>
						<a href="https://www.facebook.com/truong.pn.12" target="_blank"
							class="text-reset">Phạm Nguyễn Nhựt Trường</a>
					</p>
					<p>
						<a href="https://www.facebook.com/doduongthaituan/"
							target="_blank" class="text-reset">Đỗ Dương Thái Tuấn</a>
					</p>
				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
					<!-- Links -->
					<h4 class="text-uppercase fw-bold mb-4">bài tập</h4>
					<%
					for (int i = 0; i < 4; i++) {
						String url2 = labs3.get(i).path;
						if (i != labs3.size() - 1) {
							url2 = request.getAttribute("context") + "/" + url2;
						}
					%>
					<p>
						<a href="<%=url2%>" style="text-transform: capitalize;"
							class="text-reset"
							target="<%=(i == labs3.size() - 1) ? "_blank" : "_self"%>"><%=labs3.get(i).title%></a>
					</p>
					<%
					}
					%>
				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
					<!-- Links -->
					<h4 class="text-uppercase fw-bold mb-4">LIÊN HỆ</h4>
					<p>
						<i class="fas fa-home me-3"></i> Đại học Sư Phạm Kỹ Thuật TP.Hồ
						Chí Minh
					</p>
					<p>
						<i class="fas fa-envelope me-3"></i> group5.contact@gmail.com
					</p>
					<p>
						<i class="fas fa-phone me-3"></i> + 01 234 567 88
					</p>
					<p>
						<i class="fas fa-print me-3"></i> + 01 234 567 89
					</p>
				</div>
				<!-- Grid column -->
			</div>
			<!-- Grid row -->
		</div>
	</section>
	<!-- Section: Links  -->

	<!-- Copyright -->
	<div class="text-center p-4"
		style="background-color: rgba(0, 0, 0, 0.025);">
		<span style="font-size: 1.6rem;">© <%=new java.util.Date().getYear() + 1900%>
			Copyright:
		</span> <a class="text-reset fw-bold" href="https://mdbootstrap.com/">group5.contact@gmail.com</a>
	</div>
	<!-- Copyright -->
</footer>
<!-- Footer -->