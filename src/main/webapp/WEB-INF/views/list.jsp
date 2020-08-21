<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="style.css" rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>Grades</h1>
		<table class="table">
			<thead>
				<tr>
					<th>Name</th>
					<th>Type</th>
					<th>Score</th>
					<th>Total</th>
					<th>Percentage</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="studentgrade" items="${grades}">
					<tr>
						<td>${studentgrade.name}</td>
						<td>${studentgrade.type}</td>
						<td>${studentgrade.score}</td>
						<td>${studentgrade.total}</td>
						<td><fmt:formatNumber
								value="${studentgrade.score/studentgrade.total}" pattern=".#%" />
						</td>
						<td><a href="/grades/delete?id=${studentgrade.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br>
		<c:if test="${empty grades }">
			<p>There are no Grades to show</p>
		</c:if>
		<a href="/grades/add">Add a Grade</a>
	</div>
</body>
</html>