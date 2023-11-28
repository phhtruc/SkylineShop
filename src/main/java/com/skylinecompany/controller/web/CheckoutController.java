package com.skylinecompany.controller.web;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skylinecompany.dto.ItemsDto;
import com.skylinecompany.service.web.impl.CartServiceImpl;

@Controller
public class CheckoutController {
	
	@Autowired
	private CartServiceImpl ca = new CartServiceImpl();
	
	@RequestMapping(value={"/checkout", "/checkout/{voucher}"}, method = RequestMethod.GET)
	public ModelAndView checkOutPage(HttpSession session, Model model, @RequestParam(name = "voucher", required = false) String voucher) {
		ModelAndView mav = new ModelAndView("web/checkout");
		HashMap<Integer, ItemsDto> cart = (HashMap<Integer, ItemsDto>) session.getAttribute("Cart");
		
		try{
			int discountAmount = (int) session.getAttribute("discountAmount");
			if (cart == null || cart.isEmpty()) {
		    	mav.addObject("status", 1);
				mav.setViewName("web/shopping-cart");
				return mav;
		    }
		    mav.addObject("cart", cart);
		    mav.addObject("totalPriceCart", (int)ca.totalPriceProduct(cart) - discountAmount);
		    
		    return mav;
		}catch(Exception e){
			
		}
		
	    if (cart == null || cart.isEmpty()) {
	    	mav.addObject("status", 1);
			mav.setViewName("web/shopping-cart");
			return mav;
	    }
	    mav.addObject("cart", cart);
	    mav.addObject("totalPriceCart", (int)ca.totalPriceProduct(cart));
	    
		return mav;
	}
	
	@RequestMapping(value="/trangchu", method = RequestMethod.GET)
	public ModelAndView clear_Cart(HttpSession session) {
		ModelAndView mav = new ModelAndView("web/home");
		HashMap<Integer, ItemsDto> cart = (HashMap<Integer, ItemsDto>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<>();
		}
		session.removeAttribute("Cart");
		session.removeAttribute("discountAmount");
		session.removeAttribute("TotalPrice");
		session.removeAttribute("voucherCode");
		return mav;
	}
	

}
