package com.skylinecompany.service.web.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.DAO.ProductDetailsDAO;
import com.skylinecompany.dto.Product_ImageDto;
import com.skylinecompany.dto.RelatedProductDto;
import com.skylinecompany.entity.ImageEntity;
import com.skylinecompany.service.web.IShopDetailsService;

@Service
public class ShopDetailsServiceImpl implements IShopDetailsService{

	@Autowired
	ProductDetailsDAO d;
	
	@Override
	public List<ImageEntity> findAllImage(String name) {
		return d.findAllImage(name);
	}

	@Override
	public Product_ImageDto findProductById(String name) {
		// TODO Auto-generated method stub
		return d.findProductById(name);
	}

	@Override
	public List<RelatedProductDto> findRelatedProductByIdCate(String name) {
		// TODO Auto-generated method stub
		return d.findRelatedProductByIdCate(name);
	}
	

}
