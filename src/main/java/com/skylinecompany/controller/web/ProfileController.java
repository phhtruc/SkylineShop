package com.skylinecompany.controller.web;

import java.io.File;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.skylinecompany.Util.SecurityUtils;
import com.skylinecompany.entity.UserEntity;
import com.skylinecompany.entity.VoucherEntity;
import com.skylinecompany.service.web.impl.AccountServiceImpl;

@Controller
public class ProfileController {

	@Autowired
	AccountServiceImpl a;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	@RequestMapping(value="/tai-khoan-cua-toi", method = RequestMethod.GET)
	public ModelAndView homePage() {
	    ModelAndView mav = new ModelAndView("web/profile");
	    UserEntity userEntity = a.findOneByUserName(SecurityUtils.getPrincipal().getEmail());
	    mav.addObject("product", a.findAll(a.findIdUser(SecurityUtils.getPrincipal().getEmail())));
	    //mav.addObject("voucher", a.findAllVoucher(a.findIdUser(SecurityUtils.getPrincipal().getEmail())));
	    List<VoucherEntity> list = a.findAllVoucher(a.findIdUser(SecurityUtils.getPrincipal().getEmail()));
	    for (VoucherEntity voucher : list) {
	        voucher.setDiscountAmount((int)voucher.getDiscountAmount());
	    }

	    mav.addObject("voucher", list);

	    mav.addObject("user", userEntity);
	    return mav;
	}
	
	@RequestMapping(value="/my-profile", method = RequestMethod.GET)
	public ModelAndView homePageAlert() {
	    ModelAndView mav = new ModelAndView("web/profile");
	    UserEntity userEntity = a.findOneByUserName(SecurityUtils.getPrincipal().getEmail());
	    mav.addObject("alert",1);
	    //mav.addObject("alert2",2);
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
				user.setImageuser(namefile);
				mav.addObject("user", user);
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
	    }
        int count = a.UpdateAccountProfile(user);
	    UserEntity userEntity = a.findOneByUserName(SecurityUtils.getPrincipal().getEmail());
	    
	    if(count>0) {
	    	mav.addObject("user", userEntity);
		}
		else {
			mav.addObject("error", "Email hoặc số điện thoại đã được sử dụng");
		}
	    
	    return mav;
	}
	
	// Kiểm tra mật khẩu
	public boolean checkPassword(String rawPassword, String encodedPassword) {

        return passwordEncoder.matches(rawPassword, encodedPassword);
    }
	
	
	@RequestMapping(value="/change-password", method = RequestMethod.POST)
	public ModelAndView changePass(@ModelAttribute("user") UserEntity user ) {
		
	    UserEntity userEntity = a.findOneByUserName(SecurityUtils.getPrincipal().getEmail());
	    if( checkPassword(user.getPasswordold(), userEntity.getPassword())==true) {
	    	user.setPassword(BCrypt.hashpw(user.getPasswordconfirm1(), BCrypt.gensalt(12)));
	    	int count = a.ChangePassword(user);
	    	if(count>0) {
	    		ModelAndView mav = new ModelAndView("redirect:/my-profile");
	    		return mav;
	    	}
	    	else {
	    		ModelAndView mav = new ModelAndView("redirect:/my-profile");
	    		return mav;
	    	}
	    }
	    else {
	    	ModelAndView mav = new ModelAndView("web/profile");
	        mav.addObject("status", userEntity.getPassword());
	        return mav;
	    }
	}
	
}
