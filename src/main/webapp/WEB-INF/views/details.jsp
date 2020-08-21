<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>Grade Added</h1>
		<br>
		<p>
			<b>The grade was added to the database.</b>
		</p>
		<h2>Details</h2>
		<table class="table">
			<tr>
				<th scope="row">Name:</th>
				<td><c:out value="${grades.name}" /></td>
			</tr>
			<tr>
				<th scope="row">Type:</th>
				<td>${grades.type}</td>
			</tr>
			<tr>
				<th scope="row">Score:</th>
				<td><fmt:formatNumber value="${grades.score}" pattern=".0" /><br>
				</td>
			</tr>
			<tr>
				<th scope="row">Total:</th>
				<td>${grades.total}</td>
			</tr>

		</table>
		<br> <a href="/grades">Return to grade List</a>
	</div>

</body>
</html>