package com.skylinecompany.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BlogController {
	@RequestMapping(value="/blog", method = RequestMethod.GET)
	public ModelAndView blogPage() {
		ModelAndView mav = new ModelAndView("web/blog");
		return mav;
	}
	
	@RequestMapping(value="/blog-details", method = RequestMethod.GET)
	public ModelAndView blogDetailsPage() {
		ModelAndView mav = new ModelAndView("web/blog-details");
		return mav;
	}
}
