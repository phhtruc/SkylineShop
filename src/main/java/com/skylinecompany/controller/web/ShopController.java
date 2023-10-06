package com.skylinecompany.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skylinecompany.service.web.impl.ShopServiceImpl;

@Controller
public class ShopController {

	@Autowired
	ShopServiceImpl _shop;

	@RequestMapping(value = "/shop", method = RequestMethod.GET)
	public ModelAndView shopPage() {
		ModelAndView mav = new ModelAndView("web/shop");
		mav.addObject("product", _shop.findAllProduct_Image());
		mav.addObject("cate", _shop.findAllCategory());
		mav.addObject("brand", _shop.findAllBrand());
		return mav;
	}

	// Lọc theo danh mục
	@GetMapping("/shop/category/{name}")
	public String shopCatePage(@PathVariable String name, Model model) {
		model.addAttribute("product", _shop.findIdProduct(name));
		model.addAttribute("cate", _shop.findAllCategory());
		model.addAttribute("brand", _shop.findAllBrand());
		return "web/shop";
	}

	// Lọc theo brand

	@GetMapping("/shop/brand/{nameBrand}")
	public String shopBrandPage(@PathVariable String nameBrand, Model model) {
		model.addAttribute("product", _shop.findProductByNameBrand(nameBrand));
		model.addAttribute("cate", _shop.findAllCategory());
		model.addAttribute("brand", _shop.findAllBrand());
		return "web/shop";
	}

	// Tìm kiếm

	@GetMapping("/shop/search")
	public ModelAndView shopSearchPage(@RequestParam(name = "search") String searchQuery, Model model) {
	    ModelAndView mav = new ModelAndView("web/shop");
	    mav.addObject("product", _shop.findProductBySearchName(searchQuery));
	    model.addAttribute("cate", _shop.findAllCategory());
	    model.addAttribute("brand", _shop.findAllBrand());
	    return mav;
	}

	
}
