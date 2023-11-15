package com.skylinecompany.controller.web;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.skylinecompany.DAO.UserDAO;
import com.skylinecompany.Util.SecurityUtils;
import com.skylinecompany.entity.UserEntity;
import com.skylinecompany.mapper.UserMapper;
import com.skylinecompany.service.web.impl.AccountServiceImpl;

@Controller
public class ProfileController {
	@Autowired
	AccountServiceImpl a;
	
	@Autowired
	private UserDAO userDAO;

	@RequestMapping(value="/tai-khoan-cua-toi", method = RequestMethod.GET)
	public ModelAndView homePage() {
	    ModelAndView mav = new ModelAndView("web/profile");
	    UserEntity userEntity = userDAO.findOneByUserName(SecurityUtils.getPrincipal().getFullName());
	    mav.addObject("user", userEntity);
	    return mav;
	}

	@RequestMapping(value="/update-profile", method = RequestMethod.POST)
	public ModelAndView updateProfile(@ModelAttribute("user") UserEntity user,@RequestParam(value="file") CommonsMultipartFile commonsMultipartFiles,HttpServletRequest request,ModelMap modelMap) {
	    ModelAndView mav = new ModelAndView("web/profile");
	    String namefile =commonsMultipartFiles.getOriginalFilename();
		if(!"".equals(namefile)){
			String dirFile = request.getServletContext().getRealPath("images");
			System.out.println(dirFile);
			File fileDir = new File(dirFile);
			if(!fileDir.exists()){
				fileDir.mkdir();
			}
			try {
				commonsMultipartFiles.transferTo(new File(fileDir+File.separator+namefile));
				System.out.println("Upload file thành công!");
				user.setImageuser(namefile);
				mav.addObject("user", user);
			} catch (Exception e) {
				System.out.println(e.getMessage());
				System.out.println("Upload file thất bại!");
			}
	    }
        int count = a.UpdateAccountProfile(user);
	    UserEntity userEntity = userDAO.findOneByUserName(SecurityUtils.getPrincipal().getFullName());
	    if(count>0) {
	    	mav.addObject("user", userEntity);
		}
		else {
			mav.addObject("error", "Email hoặc số điện thoại đã được sử dụng");
		}
	    return mav;
	}
//	@RequestMapping(value="/upload-file", method = RequestMethod.POST)
//	public ModelAndView iploadfile(@ModelAttribute("user") UserEntity user,@RequestParam(value="file") CommonsMultipartFile commonsMultipartFiles,HttpServletRequest request,ModelMap modelMap) {
//	    ModelAndView mav = new ModelAndView("web/profile");
//	    String namefile =commonsMultipartFiles.getOriginalFilename();
//		if(!"".equals(namefile)){
//			String dirFile = request.getServletContext().getRealPath("images");
//			System.out.println(dirFile);
//			File fileDir = new File(dirFile);
//			if(!fileDir.exists()){
//				fileDir.mkdir();
//			}
//			try {
//				commonsMultipartFiles.transferTo(new File(fileDir+File.separator+namefile));
//				System.out.println("Upload file thành công!");
//				modelMap.addAttribute("filename", namefile);
//				user.setImageuser(namefile);
//				mav.addObject("user", user);
//			} catch (Exception e) {
//				System.out.println(e.getMessage());
//				System.out.println("Upload file thất bại!");
//			}
//	    }
//	    return mav;
//	}
	@RequestMapping(value="/change-password", method = RequestMethod.POST)
	public ModelAndView changePass(@ModelAttribute("user") UserEntity user ) {
	    ModelAndView mav = new ModelAndView("web/profile");
	    int count = a.ChangePassword(user);

	    if((SecurityUtils.getPrincipal().getPassword()).equals(user.getPassword())) {
	    	UserEntity userEntity = userDAO.findOneByUserName(SecurityUtils.getPrincipal().getFullName());
	    	if(user.getPasswordconfirm().equals(user.getPasswordconfirm1())) {
	    		if(count>0) {
			    	mav.addObject("user", userEntity);
			    	mav.setViewName("tai-khoan-cua-toi");
				}
				else {
					mav.addObject("error", "Email hoặc số điện thoại đã được sử dụng");
				}
	    	}
	    	else {
	    		return mav.addObject("error2", "Mật khẩu chưa trùng khớp");
	    	}
	    }
	    else {
	    	return mav.addObject("error1", "Mật khẩu củ chưa đúng");
	    }
	    
	    return mav;
	}
}
