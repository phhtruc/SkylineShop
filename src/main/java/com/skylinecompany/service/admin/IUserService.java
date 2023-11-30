package com.skylinecompany.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skylinecompany.entity.UserEntity;

@Service
public interface IUserService {
	
	public List<UserEntity> getAllUser();

}
