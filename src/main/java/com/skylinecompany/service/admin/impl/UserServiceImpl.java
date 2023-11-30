package com.skylinecompany.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.DAO.UserDAO;
import com.skylinecompany.entity.UserEntity;
import com.skylinecompany.service.admin.IUserService;

@Service
public class UserServiceImpl implements IUserService{
	
	@Autowired
	UserDAO userDAO;

	@Override
	public List<UserEntity> getAllUser() {
		// TODO Auto-generated method stub
		return userDAO.getAllUser();
	}

}
