package com.skylinecompany.service.web.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.DAO.BrandDtoDAO;
import com.skylinecompany.DAO.CategotyDAO;
import com.skylinecompany.DAO.Product_ImageDAO;
import com.skylinecompany.dto.BrandDto;
import com.skylinecompany.dto.Product_ImageDto;
import com.skylinecompany.entity.CategoryEntity;
import com.skylinecompany.service.web.IShopService;

@Service
public class ShopServiceImpl implements IShopService{

	@Autowired
	Product_ImageDAO proIma;
	
	@Autowired
	CategotyDAO cate;
	
	@Autowired
	BrandDtoDAO pro;

	@Override
	public List<Product_ImageDto> findAllProduct_Image() {
		// TODO Auto-generated method stub
		return proIma.findAllProduct_Image();
	}

	@Override
	public List<CategoryEntity> findAllCategory() {
		// TODO Auto-generated method stub
		return cate.findAllCategory();
	}

	@Override
	public List<Product_ImageDto> findIdProduct(int cate) {
		// TODO Auto-generated method stub
		return proIma.findIdProduct(cate);
	}

	@Override
	public List<BrandDto> findAllBrand() {
		// TODO Auto-generated method stub
		return pro.findAllBrand();
	}


	
	

}
