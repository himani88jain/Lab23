<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	  <h1>Delete ${name} ?</h1>
	  <p><b>Are you sure you want to delete this grade?</b></p><br>
	  <p>${name}</p>
	  <a href="/grades">No,go back</a>
	  <a href="/grades/delete?id=${id}">Yes,delete</a>
   <h1></h1>
</div>
</body>
</html>