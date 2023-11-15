package com.skylinecompany.service.web.impl;

import java.nio.charset.StandardCharsets;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.DAO.UserDAO;
import com.skylinecompany.entity.UserEntity;
import com.skylinecompany.service.web.IAccountService;

@Service
public class AccountServiceImpl implements IAccountService {
	
	@Autowired
	UserDAO u = new UserDAO();

	@Override
	public int AddAccount(UserEntity user) {
		if (u.checkPhoneExist(user.getPhone()) > 0 || u.checkEamilExist(user.getEmail()) > 0) {
	        // Số điện thoại hoặc email của người dùng đã tồn tại
	        return 0;
	    }else {
	    	user.setFullName(new String(user.getFullName().getBytes(), StandardCharsets.UTF_8));
	    	user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
	    	return u.AddAccount(user);
	    }
	}
	
	@Override
	public int UpdateAccount(UserEntity user) {
		if(user.getPasswordconfirm().equals(user.getPassword())) {
			
			user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
			// Số điện thoại hoặc email của người dùng đã tồn tại
			return u.UpdateAccount(user);
		}
		else {
			return 0;
		}
	    
	}
	public int UpdateAccountProfile(UserEntity user) {
		if(user!=null) {
			return u.UpdateAccountProfile(user);
		}
		else {
			return 0;
		}
	    
	}
	public int ChangePassword(UserEntity user) {
		if(user!=null) {
			return u.UpdateAccountProfile(user);
		}
		else {
			return 0;
		}
	    
	}
}
