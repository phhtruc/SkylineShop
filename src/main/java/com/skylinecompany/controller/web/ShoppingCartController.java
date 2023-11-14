package com.skylinecompany.controller.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.skylinecompany.dto.ItemsDto;
import com.skylinecompany.service.web.impl.CartServiceImpl;

@Controller
public class ShoppingCartController {

	@Autowired
	private CartServiceImpl ca = new CartServiceImpl();

	@RequestMapping(value = "/shopping-cart", method = RequestMethod.GET)
	public ModelAndView shopCartPage(HttpSession session) {
		ModelAndView mav = new ModelAndView("web/shopping-cart");
		return mav;
	}

	@RequestMapping(value = "/add-cart/{id}", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	@ResponseBody
	public Map<String, Object> AddCart(HttpServletRequest request, HttpSession session, @PathVariable Integer id,
			@RequestParam(name = "quantity", required = false) Integer quantity) {
		HashMap<Integer, ItemsDto> cart = (HashMap<Integer, ItemsDto>) session.getAttribute("Cart");

		if (cart == null) {
			cart = new HashMap<>();
		}
		cart = ca.AddCart(id, quantity, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantity", ca.totalQuantityProduct(cart));
		session.setAttribute("TotalPrice", ca.totalPriceProduct(cart));

		// Create a response object
		Map<String, Object> response = new HashMap<>();
		response.put("cartSize", cart.size());
		response.put("totalPrice", ca.totalPriceProduct(cart));

		// Return the response object
		return response;
	}

	@RequestMapping(value = "/edit-cart/{id}/{quantity}", method = RequestMethod.GET, produces = "application/json; charset=UTF-8")
	@ResponseBody
	public Map<String, Object> EditCart(HttpServletRequest request, HttpSession session, @PathVariable Integer id,
			@RequestParam(name = "quantity", required = false) Integer quantity) {
		HashMap<Integer, ItemsDto> cart = (HashMap<Integer, ItemsDto>) session.getAttribute("Cart");

		if (cart == null) {
			cart = new HashMap<>();
		}
		cart = ca.EditCart(id, quantity, cart);

		// Update the session attribute with the new quantity
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalPriceProduct", ca.totalPriceProduct(cart, id));
		session.setAttribute("TotalPrice", ca.totalPriceProduct(cart));
		

		// Create a response object
		Map<String, Object> response = new HashMap<>();
		response.put("cartSize", cart.size());
		response.put("totalPrice", ca.totalPriceProduct(cart));
		response.put("TotalPriceProduct", ca.totalPriceProduct(cart, id));

		// Return the response object
		return response;
	}

	@RequestMapping(value = "/delete-cart/{id}", method = RequestMethod.GET, produces = "text/plain; charset=UTF-8")
	public String DeleteCart(HttpServletRequest request, HttpSession session, @PathVariable Integer id,
			@RequestParam(name = "quantity", required = false, defaultValue = "1") Integer quantity) {
		HashMap<Integer, ItemsDto> cart = (HashMap<Integer, ItemsDto>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Integer, ItemsDto>();
		}
		cart = ca.DeleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantity", ca.totalQuantityProduct(cart));
		session.setAttribute("TotalPrice", ca.totalPriceProduct(cart));
		return "redirect:" + request.getHeader("Referer");
	}
	
	@RequestMapping(value = "/clear-cart", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> clearCartt(HttpSession session) {
	    session.removeAttribute("Cart");
	    return new ResponseEntity<>("Success", HttpStatus.OK);
	}
	
	@RequestMapping(value="/home", method = RequestMethod.GET)
	public ModelAndView clearCart(HttpSession session) {
		ModelAndView mav = new ModelAndView("web/home");
		session.removeAttribute("Cart");
		mav.addObject("status", 1);
		return mav;
	}
	
	@RequestMapping(value="/trangchu", method = RequestMethod.GET)
	public ModelAndView clear_Cart(HttpSession session) {
		ModelAndView mav = new ModelAndView("web/home");
		session.removeAttribute("Cart");
		return mav;
	}

}