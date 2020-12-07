<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Implicit Object</title>
</head>
<body>
	<p>Create new page every 5seconds
		<%
			response.setIntHeader("Refresh",5);
		%>
	</p>
	<p><%=new java.util.Date() %></p>
</body>
</html>