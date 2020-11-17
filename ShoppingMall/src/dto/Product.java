package dto;

import java.io.Serializable;

public class Product implements Serializable
{
	
	private String productId;
	private String pName;
	private int unitPrice;
	private String description;
	private String manufacturer;
	private String category;
	private long uintsInstock;
	private String condition;
	
	public Product()
	{
		super();
	}
	
	public Product(String productId,String pName ,Integer unitPrice)
	{
		this.productId = productId;
		this.pName = pName;
		this.unitPrice = unitPrice;
		
	}
	

    public String getProductId() {
        return this.productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getPName() {
        return this.pName;
    }

    public void setPName(String pName) {
        this.pName = pName;
    }

    public int getUnitPrice() {
        return this.unitPrice;
    }

    public void setUnitPrice(int unitPrice) {
        this.unitPrice = unitPrice;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getManufacturer() {
        return this.manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getCategory() {
        return this.category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public long getUintsInstock() {
        return this.uintsInstock;
    }

    public void setUintsInstock(long uintsInstock) {
        this.uintsInstock = uintsInstock;
    }

    public String getCondition() {
        return this.condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }
	
}
