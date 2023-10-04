package com.skylinecompany.entity;

public class BrandEntity {
	
	private int id_brand;
	private String brand_name;
	
	public BrandEntity() {
		
	}
	
	

	public BrandEntity(int id_brand, String brand_name) {
		super();
		this.id_brand = id_brand;
		this.brand_name = brand_name;
	}



	public int getId_brand() {
		return id_brand;
	}

	public void setId_brand(int id_brand) {
		this.id_brand = id_brand;
	}

	public String getBrand_name() {
		return brand_name;
	}

	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}

	
	
}
