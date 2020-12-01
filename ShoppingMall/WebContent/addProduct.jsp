<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Add The Product</title>

</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class = "jumboton">
		<div class = "container">
			<h1 class = "display-3">Add The Product</h1>
		</div>
	</div>
	
	<div class = "container">
		<form name = "newProduct" action = "./processAddProduct.jsp" class = "form-horizontal" method = "post">
		
		<div class = "form-group row">
			<label class = "col-sm-2">Product Code</label>
			<div class = "col-sm-3">
				<input type = "text" name = "productId" class = "form-control">
			</div>
		</div>
		
		
		<div class = "form-group row">
			<label class = "col-sm-2">Product Name</label>
			<div class = "col-sm-3">
				<input type = "text" name = "name" class = "form-control">
			</div>
		</div>
		
		
		
		<div class = "form-group row">
			<label class = "col-sm-2">Product Price</label>
			<div class = "col-sm-3">
				<input type = "text" name = "unitPrice" class = "form-control">
			</div>
		</div>
		
		<div class = "form-group row">
			<label class = "col-sm-2">Product Description</label>
			<div class = "col-sm-5">
				<textarea name = "description" cols = "50" rows = "2" class = "form-control"></textarea>
			</div>
		</div>
		
		<div class = "form-group row">
			<label class = "col-sm-2">Product Manufacturer</label>
			<div class = "col-sm-3">
				<input type = "text" name = "manufacturer" class = "form-control">
			</div>
		</div>
		
		<div class = "form-group row">
			<label class = "col-sm-2">Product Category</label>
			<div class = "col-sm-3">
				<input type = "text" name = "category" class = "form-control">
			</div>
		</div>
		
		<div class = "form-group row">
			<label class = "col-sm-2">Unit's Stock</label>
			<div class = "col-sm-3">
				<input type = "text" name = "unitsInStock" class = "form-control">
			</div>
		</div>
		
		<div class = "form-group row">
			<label class = "col-sm-2">Condition</label>
			<div class = "col-sm-5">
				<input type = "radio" name = "condition" value = "New"> New
				<input type = "radio" name = "condition" value = "Old"> Old
				<input type = "radio" name = "condition" value = "Refurbished"> Refurbished
			</div>
		</div>
		<div class = "form-group row">
			<div class = "col-sm-oggset-2 col-sm-10">
				<input type = "submit" class = "btn btn-primary" value = "Submit">
			</div>
		</div>
		</form>
	</div>
</body>
</html>