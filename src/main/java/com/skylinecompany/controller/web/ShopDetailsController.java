package com.skylinecompany.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.skylinecompany.service.web.impl.ShopDetailsServiceImpl;

@Controller
public class ShopDetailsController {
	
	@Autowired
	ShopDetailsServiceImpl sd;
	
	@GetMapping("/shop-details/{name}")
	public String shopDetailsPage(@PathVariable String name, Model model) {
		model.addAttribute("images", sd.findAllImage(name));
		model.addAttribute("product", sd.findProductById(name));
		model.addAttribute("productByIdCate", sd.findRelatedProductByIdCate(name));
		return "web/shop-details";
	}
}
