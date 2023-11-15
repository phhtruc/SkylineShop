package com.skylinecompany.controller.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.http.client.ClientProtocolException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skylinecompany.config.GoogleUtils;
import com.skylinecompany.config.RestFB;
import com.skylinecompany.dto.GooglePojo;
import com.skylinecompany.entity.UserEntity;
import com.skylinecompany.service.web.impl.AccountServiceImpl;

@Controller
public class BaseController {

	@Autowired
	private GoogleUtils googleUtils;

	@Autowired
	private RestFB restFB;
	
	@Autowired
	AccountServiceImpl a;

	@RequestMapping("/login-google")
	public String loginGoogle(HttpServletRequest request) throws ClientProtocolException, IOException {
		String code = request.getParameter("code");

		if (code == null || code.isEmpty()) {
			return "redirect:/login?message=google_error";
		}
		String accessToken = googleUtils.getToken(code);

		GooglePojo googlePojo = googleUtils.getUserInfo(accessToken);
		UserDetails userDetail = googleUtils.buildUser(googlePojo);
		UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(userDetail, null,
				userDetail.getAuthorities());
		authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
		SecurityContextHolder.getContext().setAuthentication(authentication);
		
		UserEntity user = new UserEntity();
		user.setEmail(googlePojo.getEmail());
		user.setImageuser(googlePojo.getPicture());
		user.setId_role(1);
		
		a.AddAccountGoogle(user);
		return "redirect:/trang-chu";
	}

	@RequestMapping("/login-facebook")
	public String loginFacebook(HttpServletRequest request) {
		String code = request.getParameter("code");
		String accessToken = "";
		try {
			accessToken = restFB.getToken(code);
		} catch (IOException e) {
			return "login?facebook=error";
		}
		com.restfb.types.User user = restFB.getUserInfo(accessToken);

		UserDetails userDetail = restFB.buildUser(user);
		UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(userDetail, null,
				userDetail.getAuthorities());
		authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
		SecurityContextHolder.getContext().setAuthentication(authentication);
		return "redirect:/trang-chu";
	}

}
