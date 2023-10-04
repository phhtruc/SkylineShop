package com.skylinecompany.service.web.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.DAO.BrandDAO;
import com.skylinecompany.DAO.CategotyDAO;
import com.skylinecompany.DAO.Product_ImageDAO;
import com.skylinecompany.DAO.SearchDAO;
import com.skylinecompany.dto.Product_ImageDto;
import com.skylinecompany.entity.BrandEntity;
import com.skylinecompany.entity.CategoryEntity;
import com.skylinecompany.service.web.IShopService;

@Service
public class ShopServiceImpl implements IShopService{

	@Autowired
	Product_ImageDAO proIma;
	
	@Autowired
	CategotyDAO cate;
	
	@Autowired
	BrandDAO b;
	
	@Autowired
	SearchDAO s;

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
	public List<Product_ImageDto> findIdProduct(String name) {
		// TODO Auto-generated method stub
		return proIma.findIdProduct(name);
	}

	@Override
	public List<BrandEntity> findAllBrand() {
		// TODO Auto-generated method stub
		return b.findAllBrand();
	}

	@Override
	public List<Product_ImageDto> findProductByNameBrand(String brand) {
		// TODO Auto-generated method stub
		return proIma.findProductByNameBrand(brand);
	}

	@Override
	public List<Product_ImageDto> findProductBySearchName(String name) {
		// TODO Auto-generated method stub
		return s.findProductBySearchName(name);
	}



	
	

}
