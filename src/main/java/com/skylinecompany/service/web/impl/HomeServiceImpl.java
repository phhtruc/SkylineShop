package com.skylinecompany.service.web.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.DAO.BestSellingProductDAO;
import com.skylinecompany.DAO.HotSalesDAO;
import com.skylinecompany.DAO.NewArrivalsDAO;
import com.skylinecompany.DAO.RoleDAO;
import com.skylinecompany.dto.BestSellingProductDto;
import com.skylinecompany.dto.HotSalesDto;
import com.skylinecompany.dto.NewArrivalsDto;
import com.skylinecompany.entity.RoleEntity;
import com.skylinecompany.service.web.IHomeService;

@Service
public class HomeServiceImpl implements IHomeService{
	
	@Autowired
	HotSalesDAO h;
	
	@Autowired
	NewArrivalsDAO n;
	
	@Autowired
	BestSellingProductDAO best;
	
	@Autowired
	RoleDAO r;
	

	@Override
	public List<HotSalesDto> findHotSalesProduct() {
		// TODO Auto-generated method stub
		return h.findHotSalesProduct();
	}

	@Override
	public List<NewArrivalsDto> findNewArricalsProduct() {
		// TODO Auto-generated method stub
		return n.findNewArricalsProduct();
	}

	@Override
	public List<BestSellingProductDto> findBestSellingProduct() {
		// TODO Auto-generated method stub
		return best.findBestSellingProduct();
	}

	@Override
	public List<RoleEntity> findAll(String name) {
		// TODO Auto-generated method stub
		return r.findAll(name);
	}


}
