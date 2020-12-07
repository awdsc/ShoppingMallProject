
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import = "com.oreilly.servlet.*" %>

<%@ page import = "com.oreilly.servlet.multipart.*" %>

<%@ page import = "javax.servlet.*" %>



<%@ page import = "java.util.*" %>

<%@ page import = "dto.Product"%>

<%@ page import = "dao.ProductRepository"%>

<%
/*
	request.setCharacterEncoding("UTF-8");
	
	String fileName = "";
	String realFolder ="c:\\upload";
	int maxSize = 5*1024*1024;
	String enType = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request,realFolder,maxSize,enType,new DefaultFileRenamePolicy());
	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");
	
	Integer price;
	
	if(unitPrice.isEmpty())
	{
		price = 0;
	}else
	{
		price = Integer.valueOf(unitPrice);
	}
 	
	long stock;
	
	if(unitsInStock.isEmpty())
	{
		stock = 0;
	}else
	{
		stock = Long.valueOf(unitsInStock);
	}
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	fileName = multi.getFilesystemName(fname);
	
	ProductRepository dao = ProductRepository.getInstance();
	
	Product newProduct = new Product();
	
	newProduct.setProductId(productId);
	newProduct.setPName(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUintsInstock(stock);
	newProduct.setCondition(condition);
	newProduct.setFileName(fileName);
	
	dao.addProduct(newProduct);
	
	response.sendRedirect("Products.jsp");
	*/
%>

