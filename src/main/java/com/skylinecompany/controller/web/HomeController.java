package com.skylinecompany.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skylinecompany.entity.Users;
import com.skylinecompany.service.web.impl.AccountServiceImpl;
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
		mav.addObject("user", new Users());
		return mav;
	}
	@RequestMapping(value="/dang-nhap", method = RequestMethod.POST)
	public ModelAndView account(@ModelAttribute("user") Users user) {
		return null;	
	}
	@RequestMapping(value="/dang-ky", method = RequestMethod.GET)
	public ModelAndView signinPage() {
		ModelAndView mav = new ModelAndView("web/signin");
		mav.addObject("user", new Users());
		return mav;
	}
	@RequestMapping(value="/dang-ky", method = RequestMethod.POST)
	public ModelAndView createAccount(@ModelAttribute("user") Users user) {
		ModelAndView mav = new ModelAndView("web/signin");
		int count = h.AddAccount(user);
		if(count>0) {
			mav.addObject("status", "Đăng ký tài khoản thành công");
			mav.setViewName("web/home");
		}
		else {
			mav.addObject("status", "Đăng ký tài khoản thất bại");
		}
		
		return mav;	
	}
}
