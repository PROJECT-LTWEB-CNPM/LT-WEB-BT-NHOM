<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Murach's Java Servlets and JSP</title>
<style>
/* The styles for the elements */
body {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 85%;
	margin-left: 2em;
	margin-right: 2em;
}

h1 {
	font-size: 140%;
	color: teal;
	margin-bottom: .5em;
}

br {
	clear: both;
}

#quantity {
	width: 2em;
}

/* The styles for the tables */
table {
	border: 1px solid black;
	border-collapse: collapse;
	width: 50em;
}

th, td {
	border: 1px solid black;
	text-align: left;
	padding: .5em;
}

.right {
	text-align: right;
}
</style>
</head>
<body>

	<h1>CD list</h1>
	<table>
		<tr>
			<th>Description</th>
			<th class="right">Price</th>
			<th>&nbsp;</th>
		</tr>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<c:forEach var="p" items="${products}">
			<tr>
				<td><c:out value="${p.description}" /></td>
				<td class="right">$<c:out value="${p.price}" /></td>
				<td><form action="cart" method="POST">
						<input type="hidden" name="productCode"
							value="<c:out value = '${p.code}'/>"> <input
							type="submit" value="Add To Cart">
					</form></td>
			</tr>
		</c:forEach>
	</table>
	<div style="margin-top: 10px">
		<a href="${pageContext.request.contextPath}/"><button>Quay
				lại trang chủ</button></a>
	</div>
</body>
</html>