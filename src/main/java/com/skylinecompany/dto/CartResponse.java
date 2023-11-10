package com.skylinecompany.dto;

import java.util.Map;

public class CartResponse {

	private Map<Integer, ItemsDto> cart;
	private int totalQuantity;
	private String totalPrice;

	public CartResponse(Map<Integer, ItemsDto> cart, int totalQuantity, String totalPrice) {
		super();
		this.cart = cart;
		this.totalQuantity = totalQuantity;
		this.totalPrice = totalPrice;
	}

	public Map<Integer, ItemsDto> getCart() {
		return cart;
	}

	public void setCart(Map<Integer, ItemsDto> cart) {
		this.cart = cart;
	}

	public int getTotalQuantity() {
		return totalQuantity;
	}

	public void setTotalQuantity(int totalQuantity) {
		this.totalQuantity = totalQuantity;
	}

	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

}
