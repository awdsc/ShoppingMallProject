package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	
	public ProductRepository()
	{
		Product phone = new Product("p1234","iphone 12", 80000);
		phone.setDescription("No Charger");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUintsInstock(1000);
		phone.setCondition("New");
		
		Product notebook = new Product("p1235","LG Gram", 70000);
		notebook.setDescription("lighter than 1kg");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUintsInstock(2486);
		notebook.setCondition("New");
		
		Product tablet = new Product("p1236","Galaxy thab 5", 40000);
		tablet.setDescription("well done");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUintsInstock(1406);
		tablet.setCondition("New");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts .add(tablet);
	}
	
	public ArrayList<Product> getAllProducts()
	{
		return listOfProducts;
	}
	
	public Product getProductById(String productId)
	{
		Product productById = null;
		
		for(int i = 0;i < listOfProducts.size(); )
		{
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
}

