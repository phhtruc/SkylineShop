package com.skylinecompany.service.web;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skylinecompany.dto.ItemsDto;
import com.skylinecompany.entity.Order;

@Service
public interface IOrderService {
	
	public void createOrderDetails(Order order, List<ItemsDto> cartItems);
	
}
