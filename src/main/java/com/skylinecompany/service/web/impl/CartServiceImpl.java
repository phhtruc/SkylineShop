package com.skylinecompany.service.web.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.DAO.CartDAO;
import com.skylinecompany.dto.ItemsDto;
import com.skylinecompany.service.web.ICartService;

@Service
public class CartServiceImpl implements ICartService{
	
	@Autowired
	private CartDAO cartDAO = new CartDAO();

	@Override
	public HashMap<Integer, ItemsDto> AddCart(int id, int quantity, HashMap<Integer, ItemsDto> cart) {
		// TODO Auto-generated method stub
		return cartDAO.AddCart(id, quantity, cart);
	}

	@Override
	public HashMap<Integer, ItemsDto> EditCart(int id, int quantity, HashMap<Integer, ItemsDto> cart) {
		// TODO Auto-generated method stub
		return cartDAO.EditCart(id, quantity, cart);
	}

	@Override
	public HashMap<Integer, ItemsDto> DeleteCart(int id, HashMap<Integer, ItemsDto> cart) {
		// TODO Auto-generated method stub
		return cartDAO.DeleteCart(id, cart);
	}

	@Override
	public int totalQuantityProduct(HashMap<Integer, ItemsDto> cart) {
		// TODO Auto-generated method stub
		return cartDAO.totalQuantityProduct(cart);
	}

	@Override
	public double totalPriceProduct(HashMap<Integer, ItemsDto> cart) {
		// TODO Auto-generated method stub
		return cartDAO.totalPriceProduct(cart);
	}
	
	public double totalPriceProduct(HashMap<Integer, ItemsDto> cart, int productId) {
		return cartDAO.totalPriceProduct(cart, productId);
	}

}
