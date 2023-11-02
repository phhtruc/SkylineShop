package com.skylinecompany.dto;

public class ItemsDto {
	
	private int quantity;
	private double totalPrice;
	private Product_ImageDto product;
	
	public ItemsDto() {
		
	}
	
	public ItemsDto(int quantity, double totalPrice, Product_ImageDto product) {
		super();
		this.quantity = quantity;
		this.totalPrice = totalPrice;
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Product_ImageDto getProduct() {
		return product;
	}

	public void setProduct(Product_ImageDto product) {
		this.product = product;
	}
	

}
