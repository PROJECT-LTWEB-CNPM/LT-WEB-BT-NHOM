<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/lab-4/lab4-1/includes/header.jsp"%>

<h1>Thanks for joining our email list</h1>

<p>Here is the information that you entered:</p>
<label>Email:</label>
<span>${user.email}</span>
<br>
<label>First Name:</label>
<span>${user.name}</span>
<br>
<label>Last Name:</label>
<span>${user.password}</span>
<br>

<p>To enter another email address, click on the Back button in your
	browser or the Return button shown below.</p>

<form action="" method="post">
	<input type="hidden" name="action" value="join"> <input
		type="submit" value="Return">
</form>

<%@include file="/lab-4/lab4-1/includes/footer.jsp"%>