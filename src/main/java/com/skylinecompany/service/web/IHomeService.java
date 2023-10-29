package com.skylinecompany.service.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.dto.BestSellingProductDto;
import com.skylinecompany.dto.HotSalesDto;
import com.skylinecompany.dto.NewArrivalsDto;
import com.skylinecompany.entity.RoleEntity;

@Service
public interface IHomeService {
	
	@Autowired
	public List<HotSalesDto> findHotSalesProduct();
	
	@Autowired
	public List<NewArrivalsDto> findNewArricalsProduct();
	
	@Autowired
	public List<BestSellingProductDto> findBestSellingProduct();
	
	@Autowired
	public List<RoleEntity> findAll(String name);
	
}
