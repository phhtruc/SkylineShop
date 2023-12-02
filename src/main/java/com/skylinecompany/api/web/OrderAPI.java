package com.skylinecompany.api.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.skylinecompany.dto.ItemsDto;
import com.skylinecompany.entity.Order;
import com.skylinecompany.service.web.impl.OrderServiceImpl;


@RestController(value = "orderRestControllerOfUser")
public class OrderAPI {
	
	@Autowired
	OrderServiceImpl or;

	@PostMapping("/api/order") //create
	public String createOrder(@RequestBody Order order, HttpSession session) {
		HashMap<Integer, ItemsDto> cart = (HashMap<Integer, ItemsDto>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<>();
		}
		List<ItemsDto> cartItems = new ArrayList<>(cart.values());
		
		or.createOrderDetails(order, cartItems);
		return "";
	}

	@PutMapping("/api/order") //update
	public Order upadteOrder(@RequestBody Order order) {
		return order;
	}
	
	@DeleteMapping("/api/order") //delete
	public void deleteOrder(@RequestBody long[] ids) {
		
	}
	
}
