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

	  <h1>Delete ${grades.name} ?</h1>
	  <p><b>Are you sure you want to delete this grade?</b></p><br>
	  <p>${grades.name}</p>
	  <a href="/grades">No,go back</a>
	  <button type="submit">Yes,delete</button>
   <h1></h1>
</div>
</body>
</html>