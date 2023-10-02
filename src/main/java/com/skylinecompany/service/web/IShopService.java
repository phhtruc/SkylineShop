package com.skylinecompany.service.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.dto.BrandDto;
import com.skylinecompany.dto.Product_ImageDto;
import com.skylinecompany.entity.CategoryEntity;

@Service
public interface IShopService {
	
	@Autowired
	public List<Product_ImageDto> findAllProduct_Image();
	
	@Autowired
	public List<CategoryEntity> findAllCategory();
	
	@Autowired
	public List<Product_ImageDto> findIdProduct(int cate);
	
	@Autowired
	public List<BrandDto> findAllBrand();

}
