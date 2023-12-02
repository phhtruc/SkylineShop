package com.skylinecompany.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.DAO.OrderDAO;
import com.skylinecompany.dto.OrderDto;
import com.skylinecompany.service.admin.IOrderAdminService;

@Service
public class OrderAdminServiceImpl implements IOrderAdminService{
	
	@Autowired
	OrderDAO orderDAO;

	@Override
	public List<OrderDto> findAllOrderAdmin() {
		// TODO Auto-generated method stub
		return orderDAO.findAllOrderAdmin();
	}


}
