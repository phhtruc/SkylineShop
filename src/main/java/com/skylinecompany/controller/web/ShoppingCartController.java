package com.skylinecompany.controller.web;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skylinecompany.dto.ItemsDto;
import com.skylinecompany.service.web.impl.CartServiceImpl;

@Controller
public class ShoppingCartController {
	
	@Autowired
	private CartServiceImpl ca = new CartServiceImpl();
	
	@RequestMapping(value="/shopping-cart", method = RequestMethod.GET)
	public ModelAndView shopCartPage(HttpSession session) {
		ModelAndView mav = new ModelAndView("web/shopping-cart");
		return mav;
	}
	
	@RequestMapping(value="/add-cart/{id}", method = RequestMethod.GET, produces = "text/plain; charset=UTF-8")
	public ResponseEntity<String> AddCart(HttpServletRequest request, HttpSession session, @PathVariable Integer id ,@RequestParam(name = "quantity", required = false,  defaultValue = "1") Integer quantity ) {
		HashMap<Integer, ItemsDto> cart = (HashMap<Integer, ItemsDto>)session.getAttribute("Cart");
		if(cart == null) {
			cart = new HashMap<Integer, ItemsDto>();
		}
		cart = ca.AddCart(id, quantity, cart);
		session.setAttribute("Cart", cart);
		//return "redirect:"+request.getHeader("Referer");
		return ResponseEntity.ok("Sản phẩm đã được thêm vào giỏ hàng.");
	}
}
