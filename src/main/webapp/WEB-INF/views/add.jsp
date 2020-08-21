<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>Add a Grade</h1>
		<form action="/grades/add" method="post">
			<table class="table">
				<tr>
					<th scope="row">Name</th>
					<td><input type="text" name="name" autofocus /></td>
				</tr>
				<tr>
					<th scope="row">Type</th>
					<td><select name="type">
							<option value="Assignment">Assignment</option>
							<option value="Quiz">Quiz</option>
							<option value="Exam">Exam</option>
					</select></td>
				</tr>
				<tr>
					<th scope="row">Score</th>
					<td><input type="number" name="score" step=".01" /></td>
				</tr>
				<tr>
					<th scope="row">Total</th>
					<td><input type="number" name="total" step=".01" /></td>
				</tr>
			</table>
			<button type="submit" class="add">Add</button>
			<a class="home" href="/grades">Cancel</a>
		</form>
	</div>
</body>
</html>