<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
<style>
/* The styles for the elements */
body { 
    font-family: Arial, Helvetica, sans-serif;
    font-size: 85%;
    margin-left: 2em;
    margin-right: 2em;
    width: 400px;
}
h1 {     
    font-size: 140%;
    color: teal;
    margin-bottom: .5em;    
}
h2 {     
    font-size: 120%;
    color: teal;
    margin-bottom: .5em;    
}
label {
    float: left;
    width: 7em;
    margin-bottom: 0.5em;
    font-weight: bold;
}
input[type="text"], input[type="email"] {  /* An attribute selector */
    width: 15em;
    margin-left: 0.5em;    
    margin-bottom: 0.5em;
}
span {
    margin-left: 0.5em;    
    margin-bottom: 0.5em;    
}
br {
    clear: both;
}

/* The styles for the classes */
.pad_top {
    padding-top: 0.25em;
}
.margin_left {
    margin-left: 0.5em;
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
    <h1>Update User</h1>
    <p>NOTE: You can't update the email address.</p>
    <form action="userAdmin" method="post">
        <input type="hidden" name="action" value="update_user">        
        <label class="pad_top">Email:</label>
        <input type="email" name="email" value="${user.email}" 
               disabled><br>
        <label class="pad_top">First Name:</label>
        <input type="text" name="firstName" value="${user.firstName}" 
               required><br>
        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastName" value="${user.lastName}"  
               required><br>        
        <label>&nbsp;</label>
        <input type="submit" value="Update" class="margin_left">
    </form>
</body>
</html>