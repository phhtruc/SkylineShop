package com.skylinecompany.service.web.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.DAO.OrderDAO;
import com.skylinecompany.Util.SecurityUtils;
import com.skylinecompany.dto.ItemsDto;
import com.skylinecompany.entity.Order;
import com.skylinecompany.service.web.IOrderService;

@Service
public class OrderServiceImpl implements IOrderService{

	@Autowired
	private OrderDAO o;
	
	
	@Override
	public void createOrderDetails(Order order, List<ItemsDto> cartItems) {
		order.setId_user(o.findIdUser(SecurityUtils.getPrincipal().getEmail()));
		order.setPayment_status("Chưa thanh toán");
		o.createOrderDetails(order, cartItems);
	}

}
