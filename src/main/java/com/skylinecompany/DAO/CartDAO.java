package com.skylinecompany.DAO;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.skylinecompany.dto.ItemsDto;
import com.skylinecompany.dto.Product_ImageDto;

@Repository
public class CartDAO{
	
	@Autowired
	Product_ImageDAO productDao = new Product_ImageDAO();
	
	public HashMap<Integer, ItemsDto> AddCart(int id, int quantity, HashMap<Integer, ItemsDto> cart){
		ItemsDto items = new ItemsDto();
		Product_ImageDto product = productDao.findProductById(id);
		if(product != null && cart.containsKey(id)) {
			items = cart.get(id);
			items.setQuantity(items.getQuantity() + quantity);
			items.setTotalPrice(product.getPrice() * items.getQuantity());
		}
		else {
			items.setProduct(product);
			items.setQuantity(quantity);
			items.setTotalPrice(product.getPrice() * items.getQuantity());
		}
		cart.put(id, items);
		return cart;
	}
	
	public HashMap<Integer, ItemsDto> EditCart(int id, int quantity, HashMap<Integer, ItemsDto> cart){
		ItemsDto items = new ItemsDto();
		if(cart == null) {
			return cart;
		}
		if(cart.containsKey(id)) {
			items = cart.get(id);
			items.setQuantity(quantity);
			double totalPrice = quantity * items.getProduct().getPrice();
			items.setTotalPrice(totalPrice);
		}
		cart.put(id, items);
		return cart;
	}
	
	public HashMap<Integer, ItemsDto> DeleteCart(int id, HashMap<Integer, ItemsDto> cart){
		if(cart == null) {
			return cart;
		}
		if(cart.containsKey(id)) {
			cart.remove(id);
		}
		return cart;
	}
	
	public int totalQuantityProduct(HashMap<Integer, ItemsDto> cart){
		int totalQuantity = 0;
		for(Map.Entry<Integer, ItemsDto> items : cart.entrySet()) {
			totalQuantity += items.getValue().getQuantity();
		}
		return totalQuantity;
	}
	
	public double totalPriceProduct(HashMap<Integer, ItemsDto> cart){
		double totalPrice = 0;
		for(Map.Entry<Integer, ItemsDto> items : cart.entrySet()) {
			totalPrice += items.getValue().getTotalPrice();
		}
		return totalPrice;
	}
	
	public double totalPriceProduct(HashMap<Integer, ItemsDto> cart, int productId) {
	    if (!cart.containsKey(productId)) {
	        return 0;
	    }

	    // Get the product from the cart
	    ItemsDto items = cart.get(productId);

	    // Calculate the total price of the product
	    return items.getQuantity() * items.getProduct().getPrice();
	}
	
}