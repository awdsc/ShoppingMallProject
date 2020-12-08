package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public ProductRepository()
	{
		Product phone = new Product("p1234","iphone 12", 80000);
		phone.setDescription("No Charger");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUintsInstock(1000);
		phone.setCondition("New");
		phone.setFileName("p1234.png");
		
		Product notebook = new Product("p1235","LG Gram", 70000);
		notebook.setDescription("lighter than 1kg");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUintsInstock(2486);
		notebook.setCondition("New");
		notebook.setFileName("p1235.png");
		
		Product tablet = new Product("p1236","Galaxy tab 5", 40000);
		tablet.setDescription("well done");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUintsInstock(1406);
		tablet.setCondition("New");
		tablet.setFileName("p1236.png");
				
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
		
		
	}
	
	public ArrayList<Product> getAllProducts()
	{
		return listOfProducts;
	}
	
	public static ProductRepository getInstance()
	{
		return instance;
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
	
	public void addProduct(Product product)
	{
		listOfProducts.add(product);
	}
}

