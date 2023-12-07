package com.skylinecompany.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.DAO.BrandDAO;
import com.skylinecompany.DAO.CategoryDAO;
import com.skylinecompany.DAO.ProductDAO;
import com.skylinecompany.entity.BrandEntity;
import com.skylinecompany.entity.CategoryEntity;
import com.skylinecompany.entity.ProductEntity;
import com.skylinecompany.service.admin.IProductService;

@Service
public class ProductServiceImpl implements IProductService{
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	BrandDAO brandDAO;
	

	@Override
	public List<ProductEntity> getAllProduct() {
		// TODO Auto-generated method stub
		return productDAO.getAllProduct();
	}

	@Override
	public List<CategoryEntity> findAllCategory() {
		// TODO Auto-generated method stub
		return categoryDAO.findAllCategory();
	}

	@Override
	public List<BrandEntity> findAllBrand() {
		// TODO Auto-generated method stub
		return brandDAO.findAllBrand();
	}

	@Override
	public List<ProductEntity> deleteProductById(int id) {
		// TODO Auto-generated method stub
		return productDAO.deleteProductById(id);
	}

}
