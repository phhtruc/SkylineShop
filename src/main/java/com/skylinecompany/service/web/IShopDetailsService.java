package com.skylinecompany.service.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.dto.Product_ImageDto;
import com.skylinecompany.dto.RelatedProductDto;
import com.skylinecompany.entity.ImageEntity;

@Service
public interface IShopDetailsService {
	
	@Autowired
	public List<ImageEntity> findAllImage(String name);
	
	@Autowired
	public Product_ImageDto findProductById(String name);
	
	@Autowired
	public List<RelatedProductDto> findRelatedProductByIdCate(String name);
}
