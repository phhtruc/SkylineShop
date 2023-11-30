package com.skylinecompany.dto;

import java.util.List;

import com.skylinecompany.entity.BrandEntity;
import com.skylinecompany.entity.CategoryEntity;
import com.skylinecompany.entity.ProductEntity;

public class ProductResponseDto {

	private List<ProductEntity> products;
    private List<CategoryEntity> categories;
    private List<BrandEntity> brands;
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
