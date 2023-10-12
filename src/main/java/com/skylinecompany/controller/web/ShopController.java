package com.skylinecompany.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skylinecompany.dto.PaginatesDto;
import com.skylinecompany.service.web.impl.PaginateServiceImpl;
import com.skylinecompany.service.web.impl.ShopServiceImpl;

@Controller
public class ShopController {

	@Autowired
	ShopServiceImpl _shop;

	@Autowired
	PaginateServiceImpl pagi;

	private int totalProductsPage = 12;

	@RequestMapping(value = "/shop", method = RequestMethod.GET)
	public ModelAndView shopPage(@RequestParam(name = "page", required = false,  defaultValue = "1") Integer page,
			@RequestParam(name = "category", required = false) String cate,
			@RequestParam(name = "brand", required = false) String brand,
			@RequestParam(name = "sort", required = false) String sort) {
		
		ModelAndView mav = new ModelAndView("web/shop");
		
		int totalData = _shop.findProduct(cate, brand, sort).size();
		PaginatesDto paginate  = pagi.getInfoPaginate(totalData, totalProductsPage, page);

		mav.addObject("product", _shop.GetDataProductsPaginate(cate, brand, sort, paginate.getStart(), totalProductsPage));
		mav.addObject("paginate", paginate);
		mav.addObject("cate", _shop.findAllCategory());
		mav.addObject("brand", _shop.findAllBrand());
		mav.addObject("totalData", totalData);
		return mav;
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
