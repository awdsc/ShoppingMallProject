<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "dto.Product" %>
<%@ page import = "dao.ProductRepository" %>

<jsp:useBean id = "ProductDAO" class="dao.ProductRepository" scope = "session" />
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Product Information</title>
</head>
<body>
	<jsp:include page = "menu.jsp"/>
	<div class = "jumoteron">
		<div class = "container">
			<h1 class = "display-3">Product Imformation</h1>
		</div>
	</div>
	
	<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);
		
	
	%>
	
	<div class = "container">
		<div class = "row">
			<div class = "col-md-6">
				<h3><%=product.getPName() %></h3>
				<p><%=product.getDescription() %>
				<p><b>Code : </b><span class = "badge badge-danger"><%=product.getProductId() %></span></p>
				<p><b>Manufacturer : </b><%=product.getManufacturer() %></p>
				<p><b>Category : </b><%=product.getCategory() %></p>
				<p><b>UnitsInstock : </b><%=product.getUintsInstock() %></p>
				<p>$<%=product.getUnitPrice() %></p>
				<p><a href = "#" class = "btn btn-info">Buy It</a><a href = "./Products.jsp" class = "btn btn-secondary">Return The List</a>
			</div>
		</div>
	</div>
</body>
</html>