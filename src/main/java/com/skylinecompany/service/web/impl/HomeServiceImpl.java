package com.skylinecompany.service.web.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.DAO.BestSellingProductDAO;
import com.skylinecompany.dto.BestSellingProductDto;
import com.skylinecompany.service.web.IHomeService;

@Service
public class HomeServiceImpl implements IHomeService {

	@Autowired
	BestSellingProductDAO best;

	@Override
	public List<BestSellingProductDto> findBestSellingProduct() {
		// TODO Auto-generated method stub
		return best.findBestSellingProduct();
	}
}
