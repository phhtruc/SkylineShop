package com.skylinecompany.service.admin.impl;

import java.nio.charset.StandardCharsets;
import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.DAO.UserDAO;
import com.skylinecompany.dto.UsersDto;
import com.skylinecompany.entity.UserEntity;
import com.skylinecompany.service.admin.IUserService;

@Service
public class UserServiceImpl implements IUserService{
	
	@Autowired
	UserDAO userDAO;

	@Override
	public List<UsersDto> getAllUser() {
		return userDAO.getAllUser();
	}

	@Override
	public List<UsersDto> deleteUserId(int id) {
		// TODO Auto-generated method stub
		return userDAO.deleteUserId(id);
	}

	@Override
	public List<UsersDto> updateUserId(int id) {
		// TODO Auto-generated method stub
		return userDAO.updateUserId(id);
	}

	@Override
	public int AddAccount(UserEntity user) {
		if (userDAO.checkPhoneExist(user.getPhone()) > 0 || userDAO.checkEamilExist(user.getEmail()) > 0) {
			// Số điện thoại hoặc email của người dùng đã tồn tại
			return 0;
		} else {
			user.setFullName(new String(user.getFullName().getBytes(), StandardCharsets.UTF_8));
			user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
			return userDAO.AddAccount(user);
		}
	}

}
