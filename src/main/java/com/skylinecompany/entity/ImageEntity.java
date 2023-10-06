package com.skylinecompany.entity;

public class ImageEntity {
	
	private int id_image;
	private String image;
	private int id_product;
	
	public ImageEntity() {
		
	}

	public ImageEntity(int id_image, String image, int id_product) {
		super();
		this.id_image = id_image;
		this.image = image;
		this.id_product = id_product;
	}

	public int getId_image() {
		return id_image;
	}

	public void setId_image(int id_image) {
		this.id_image = id_image;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getId_product() {
		return id_product;
	}

	public void setId_product(int id_product) {
		this.id_product = id_product;
	}
	
	

}
