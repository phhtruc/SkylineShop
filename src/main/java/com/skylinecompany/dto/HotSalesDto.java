package com.skylinecompany.dto;

public class HotSalesDto {
	
	private int id_product;
	private String product_name;
	private double price;
	private String image;
	
	public HotSalesDto() {
		
	}

	public HotSalesDto(int id_product, String product_name, double price, String image) {
		super();
		this.id_product = id_product;
		this.product_name = product_name;
		this.price = price;
		this.image = image;
	}

	public int getId_product() {
		return id_product;
	}

	public void setId_product(int id_product) {
		this.id_product = id_product;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	

}
