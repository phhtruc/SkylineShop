package com.skylinecompany.service.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.entity.UserEntity;

@Service
public interface  IAccountService {
	
	@Autowired
	public int AddAccount(UserEntity user);
	
	@Autowired
	public int UpdateAccount(UserEntity user);
	
	@Autowired
	public UserEntity findOneByUserName(String name);
}
