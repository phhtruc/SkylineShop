package com.skylinecompany.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.DAO.UserDAO;
import com.skylinecompany.dto.UsersDto;
import com.skylinecompany.service.admin.IUserService;

@Service
public class UserServiceImpl implements IUserService{
	
	@Autowired
	UserDAO userDAO;

	@Override
	public List<UsersDto> getAllUser() {
		return userDAO.getAllUser();
	}

}
