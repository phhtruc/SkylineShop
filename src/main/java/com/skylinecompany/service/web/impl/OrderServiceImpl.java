package com.skylinecompany.service.web.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.DAO.OrderDAO;
import com.skylinecompany.dto.ItemsDto;
import com.skylinecompany.entity.Order;
import com.skylinecompany.service.web.IOrderService;

@Service
public class OrderServiceImpl implements IOrderService{

	@Autowired
	private OrderDAO o;
	
	@Override
	public void createOrderDetails(Order order, List<ItemsDto> cartItems) {
		order.setId_user(2);
		order.setPayment_status("Chua thanh toan");
		o.createOrderDetails(order, cartItems);
	}

}
