package com.skylinecompany.service.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.dto.Product_ImageDto;
import com.skylinecompany.entity.BrandEntity;
import com.skylinecompany.entity.CategoryEntity;

@Service
public interface IShopService {
	
	@Autowired
	public List<Product_ImageDto> findAllProduct_Image();
	
	@Autowired
	public List<CategoryEntity> findAllCategory();
	
	@Autowired
	public List<BrandEntity> findAllBrand();
	
	@Autowired
	public List<Product_ImageDto> findAllProductByNameCategory(String cate);
	
	@Autowired
	public List<Product_ImageDto> findAllProductByNameBrand(String brand);
	
	@Autowired
	public List<Product_ImageDto> findProductBySearchName(String name);
	
	@Autowired
	public List<Product_ImageDto> findProductByPrice(String sort);
	
	@Autowired
	public List<Product_ImageDto> findProduct(String cate, String brand, String sort);
	
	@Autowired
	public List<Product_ImageDto> GetDataProductsPaginate(String cate, String brand, String sort, int start, int totalPage);

}
