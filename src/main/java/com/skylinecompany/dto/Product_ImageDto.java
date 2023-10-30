package com.skylinecompany.dto;

public class Product_ImageDto {

	private int id_product;
	private String product_name;
	private double price;
	private String desc;
	private int id_brand;
	private int id_cate;
	private String image;

	public Product_ImageDto() {

	}

	public Product_ImageDto(int id_product, String product_name, double price, String desc, int id_brand, int id_cate,
			String image) {
		super();
		this.id_product = id_product;
		this.product_name = product_name;
		this.price = price;
		this.desc = desc;
		this.id_brand = id_brand;
		this.id_cate = id_cate;
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

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}


	public int getId_brand() {
		return id_brand;
	}

	public void setId_brand(int id_brand) {
		this.id_brand = id_brand;
	}

	public int getId_cate() {
		return id_cate;
	}

	public void setId_cate(int id_cate) {
		this.id_cate = id_cate;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}