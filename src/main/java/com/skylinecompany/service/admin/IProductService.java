package com.skylinecompany.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.entity.BrandEntity;
import com.skylinecompany.entity.CategoryEntity;
import com.skylinecompany.entity.ProductEntity;

@Service
public interface IProductService {
	
	@Autowired
	public List<ProductEntity> getAllProduct();
	
	@Autowired
	public List<CategoryEntity> findAllCategory();
	
	@Autowired
	public List<BrandEntity> findAllBrand();
	
	public List<ProductEntity> deleteProductById(int id);
}
