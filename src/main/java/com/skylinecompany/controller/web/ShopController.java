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
	
	@RequestMapping(value="/shop", method = RequestMethod.GET)
	public ModelAndView shopPage() {
		ModelAndView mav = new ModelAndView("web/shop");
		mav.addObject("product", _shop.findAllProduct_Image());
		mav.addObject("cate", _shop.findAllCategory());
		//mav.addObject("brand", _shop.findAllBrand());
		return mav;
	}
	
    // Lọc theo danh mục
    @GetMapping("/shop/{id}")
    public String shopCatePage(@PathVariable int id, Model model) {
        model.addAttribute("product", _shop.findIdProduct(id));
        model.addAttribute("cate", _shop.findAllCategory());
        
        return "web/shop";
    }
    
 // Tìm kiếm
	/*
	 * @GetMapping("/shop") public ModelAndView shopSearchPage(@RequestParam(name =
	 * "search", required = false) String searchQuery) { ModelAndView mav = new
	 * ModelAndView("web/shop"); mav.addObject("product",
	 * _shop.findProductByName(searchQuery)); return mav; }
	 */
	
	@RequestMapping(value="/shop-details", method = RequestMethod.GET)
	public ModelAndView shopDetailsPage() {
		ModelAndView mav = new ModelAndView("web/shop-details");
		return mav;
	}
}
