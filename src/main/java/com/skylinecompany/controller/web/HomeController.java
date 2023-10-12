package com.skylinecompany.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skylinecompany.service.web.impl.HomeServiceImpl;

@Controller
public class HomeController {
	
	@Autowired
	HomeServiceImpl h;
	
	@RequestMapping(value="/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("web/home");
		mav.addObject("hotSale", h.findHotSalesProduct());
		mav.addObject("newArrivals", h.findNewArricalsProduct());
		mav.addObject("best", h.findBestSellingProduct());
		return mav;
	}
	
	@RequestMapping(value="/dang-nhap", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		ModelAndView mav = new ModelAndView("web/login");
		return mav;
	}
}
