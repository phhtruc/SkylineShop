package com.skylinecompany.service.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.dto.BestSellingProductDto;

@Service
public interface IHomeService {
	
	@Autowired
	public List<BestSellingProductDto> findBestSellingProduct();
	
}
