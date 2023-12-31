package com.skylinecompany.controller.web;

import java.nio.charset.StandardCharsets;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skylinecompany.entity.UserEntity;
import com.skylinecompany.service.web.impl.AccountServiceImpl;
import com.skylinecompany.service.web.impl.HomeServiceImpl;

@Controller
public class HomeController {
	
	@Autowired
	HomeServiceImpl h;
	
	@Autowired
	AccountServiceImpl a;
	
	@Autowired
	HttpServletRequest request;
	

	@RequestMapping(value="/server", method = RequestMethod.GET)
	public ModelAndView serverPage() {
		ModelAndView mav = new ModelAndView("Server");
		return mav;
	}
    
	@RequestMapping(value="/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("web/home");
		mav.addObject("best", h.findBestSellingProduct());
		return mav;
	} 
	
	@RequestMapping(value="/dang-nhap", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}
	
	@RequestMapping(value = "/thoat", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response) {
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null) {
	        // Hủy token Remember-Me
	        //tokenBasedRememberMeServices.logout(request, response, auth);
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
	    return "redirect:/trang-chu";
	}


	
	@RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
	public ModelAndView accessDenied() {
		return new ModelAndView("redirect:/dang-nhap?accessDenied");
	}
	
	
	@RequestMapping(value="/dang-ky", method = RequestMethod.GET)
	public ModelAndView signinPage() {
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("user", new UserEntity());
		return mav;
	}
	
	
	@RequestMapping(value="/dang-ky", method = RequestMethod.POST)
	public ModelAndView createAccount(@ModelAttribute("user") UserEntity user) {
		ModelAndView mav = new ModelAndView("register");
		user.setFullName(new String(user.getFullName().getBytes(), StandardCharsets.UTF_8));
		int count = a.AddAccount(user);
		if(count>0) {
			mav.addObject("status", "Đăng ký tài khoản thành công! Hãy đăng nhập");
			mav.setViewName("login");
		}
		else {
			mav.addObject("error", "Email hoặc số điện thoại đã được sử dụng");
			mav.setViewName("register");
		}
		return mav;	
	}
	
	@RequestMapping(value="/quen-mat-khau", method = RequestMethod.GET)
	public ModelAndView forgotPassPage() {
		ModelAndView mav = new ModelAndView("forgot-password");
		mav.addObject("user", new UserEntity());
		return mav;
	}
	
	@RequestMapping(value="/quen-mat-khau", method = RequestMethod.POST)
	public ModelAndView forgotPass(@ModelAttribute("user") UserEntity user) {
		ModelAndView mav= new ModelAndView("forgot-password");
		int count = a.UpdateAccount(user);
		if(count>0) {
			mav.addObject("status", "Đổi mật khẩu thành công! Hãy đăng nhập");
			mav.setViewName("login");
		}
		else {
			mav.addObject("error", "Email hoặc mật khẩu nhập lại không đúng");
			mav.setViewName("forgot-password");
		}
		return mav;	
	}
	
	@RequestMapping(value="/send-email", method = RequestMethod.GET)
	public ModelAndView sendEmail() {
		ModelAndView mav = new ModelAndView("forgot-password");
		//sendEmail("kientruc582@gmail.com","trucpham240420@gmail.com","hello","You forget password?");
		return mav;
	}
	

	
}
