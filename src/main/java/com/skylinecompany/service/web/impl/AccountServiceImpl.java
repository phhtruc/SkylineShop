package com.skylinecompany.service.web.impl;

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
	    	user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
	    	return u.AddAccount(user);
	    }
	}
}