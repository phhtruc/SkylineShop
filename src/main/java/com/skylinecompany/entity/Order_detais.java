package com.skylinecompany.entity;

public class Order_detais {

	private String product_name;
	private int id_product;
	private int id_order;
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

	public int getId_product() {
		return id_product;
	}

	public void setId_product(int id_product) {
		this.id_product = id_product;
	}

	public int getId_order() {
		return id_order;
	}

	public void setId_order(int id_order) {
		this.id_order = id_order;
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
