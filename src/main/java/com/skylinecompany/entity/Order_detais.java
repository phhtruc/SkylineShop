package com.skylinecompany.entity;

public class Order_detais {

	private String product_name;
	private int quantity;
	private double total;
	private String image;
	
	public Order_detais() {
		
	}

	public Order_detais(String product_name, int quantity, double total, String image) {
		super();
		this.product_name = product_name;
		this.quantity = quantity;
		this.total = total;
		this.image = image;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}
