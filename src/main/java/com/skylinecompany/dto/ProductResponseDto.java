package com.skylinecompany.dto;

import java.util.List;

import com.skylinecompany.entity.BrandEntity;
import com.skylinecompany.entity.CategoryEntity;
import com.skylinecompany.entity.FileEntity;
import com.skylinecompany.entity.ProductEntity;

public class ProductResponseDto {

	private List<ProductEntity> products;
	private List<CategoryEntity> categories;
	private List<BrandEntity> brands;
	private List<FileEntity> file;
	private ProductEntity productEntity;

	public ProductEntity getProductEntity() {
		return productEntity;
	}

	public void setProductEntity(ProductEntity productEntity) {
		this.productEntity = productEntity;
	}

	public List<FileEntity> getFile() {
		return file;
	}

	public void setFile(List<FileEntity> file) {
		this.file = file;
	}

	public List<ProductEntity> getProducts() {
		return products;
	}

	public void setProducts(List<ProductEntity> products) {
		this.products = products;
	}

	public List<CategoryEntity> getCategories() {
		return categories;
	}

	public void setCategories(List<CategoryEntity> categories) {
		this.categories = categories;
	}

	public List<BrandEntity> getBrands() {
		return brands;
	}

	public void setBrands(List<BrandEntity> brands) {
		this.brands = brands;
	}

}
