package com.skylinecompany.service.web;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.skylinecompany.dto.ItemsDto;

@Service
public interface ICartService {
	
	public HashMap<Integer, ItemsDto> AddCart(int id, int quantity, HashMap<Integer, ItemsDto> cart);
	
	public HashMap<Integer, ItemsDto> EditCart(int id, int quantity, HashMap<Integer, ItemsDto> cart);
	
	public HashMap<Integer, ItemsDto> DeleteCart(int id, HashMap<Integer, ItemsDto> cart);
	
	public int totalQuantityProduct(HashMap<Integer, ItemsDto> cart);
	
	public double totalPriceProduct(HashMap<Integer, ItemsDto> cart);
}
