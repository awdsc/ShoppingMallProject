<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.Product" %>
<%@ page import = "dao.ProductRepository" %>

<jsp:useBean id = "ProductDAO" class="dao.ProductRepository" scope = "session" />
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Products List</title>
</head>
<body>
	<jsp:include page = "menu.jsp"/>
	<div class = "jumoteron">
		<div class = "container">
			<h1 class = "display-3">Products List</h1>
		</div>
	</div>
	<%
		ProductRepository dao = ProductRepository.getInstance();
		ArrayList<Product> listOfProduct = dao.getAllProducts();
	%>
	
	<div class = "container">
		<div class = "row" align = "center">
			<%
				for(int i=0;i<listOfProduct.size();i++)
				{
					Product product = listOfProduct.get(i);
			%>	
				<div class = "col-md-4">
					<h3><%=product.getPName() %></h3>
					<p><%=product.getDescription() %></p>
					<p><%=product.getUnitPrice() %></p>
					<p><a href = "./Product.jsp?id=<%=product.getProductId() %>" class = "btn btn-secondary" role = "button">More Information</a>
				</div>	
			<%		
				}
			%>
		
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>