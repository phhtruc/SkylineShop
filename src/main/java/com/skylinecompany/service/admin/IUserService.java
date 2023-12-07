package com.skylinecompany.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skylinecompany.dto.UsersDto;
import com.skylinecompany.entity.UserEntity;

@Service
public interface IUserService {
	
	public List<UsersDto> getAllUser();
	
	public List<UsersDto> deleteUserId(int id);
	
	public List<UsersDto> updateUserId(int id);
	
	public int AddAccount(UserEntity user);

}
