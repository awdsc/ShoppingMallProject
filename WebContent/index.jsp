<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href = "http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<nav class = "navbar navbar-expand navdarr-dark bg-dark">
		<div class = "container">
			<div class = "navbar-header">
				<a class = "navbar-brand" href = "./Welcome.jsp">Home</a>
				
			</div>
		</div>
	</nav>
	<%
		String greeting = "Welcome To Web Shopping Mall";
		String tagline = "Welcome To Web Market!";
	%>
	<div class = "jumborton">
		<div class = "container">
			<h1 class = "display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>
	
	<div class = "container">
		<div class = "text -center">
			<h3 >
				<%=tagline%>
			</h3>
		</div>
		<hr>
	</div>
	<footer class = "container">
		<p>&copy;WebMarket</p>
	</footer>
</body>
</html>