package com.skylinecompany.entity;

public class Order_detais {

	private int id_order;
	private int id_product;
	private int quantity;
	private double total;

	public Order_detais(int id_order, int id_product, int quantity, double total) {
		super();
		this.id_order = id_order;
		this.id_product = id_product;
		this.quantity = quantity;
		this.total = total;
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

	public int getId_order() {
		return id_order;
	}

	public void setId_order(int id_order) {
		this.id_order = id_order;
	}

	public int getId_product() {
		return id_product;
	}

	public void setId_product(int id_product) {
		this.id_product = id_product;
	}

}
