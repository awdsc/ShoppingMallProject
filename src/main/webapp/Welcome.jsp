<%@ page contentType = "text.html; charset = utf-8" %>
<%@ page import = "java.util.Date"%>


<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href = "http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<%@ include  file = "menu.jsp"%>
	<%!
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
			<%
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if(hour <= 12)
				{
					am_pm = "AM";
					hour = hour - 12;
				}else
				{
					am_pm = "PM";
				}
				String CT = hour + ":"  + minute + ":" + second + " " + am_pm;
				out.println("Current Time" + CT + "\n");
			%>
		</div>
		<%@ include file = "footer.jsp"%>
		<hr>
	</div>
	
</body>
</html>