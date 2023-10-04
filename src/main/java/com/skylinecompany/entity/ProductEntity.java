package com.skylinecompany.entity;

public class ProductEntity {
	
	private int id_product;
	private String product_name;
	private double price;
	private String desc;
	private String brand;
	private int id_cate;
	
	public ProductEntity() {
		
	}
	
	public ProductEntity(int id_product, String product_name, double price, String desc, String brand, int id_cate) {
		super();
		this.id_product = id_product;
		this.product_name = product_name;
		this.price = price;
		this.desc = desc;
		this.brand = brand;
		this.id_cate = id_cate;
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
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public int getId_cate() {
		return id_cate;
	}
	public void setId_cate(int id_cate) {
		this.id_cate = id_cate;
	}
	
	
}
