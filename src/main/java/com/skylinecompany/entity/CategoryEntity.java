package com.skylinecompany.entity;

public class CategoryEntity {
	private int id_cate;
	private String cate_name;
	
	public CategoryEntity() {
		
	}

	public CategoryEntity(int id_cate, String cate_name) {
		super();
		this.id_cate = id_cate;
		this.cate_name = cate_name;
	}

	public int getId_cate() {
		return id_cate;
	}

	public void setId_cate(int id_cate) {
		this.id_cate = id_cate;
	}

	public String getCate_name() {
		return cate_name;
	}

	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}
	
	
}
