package com.skylinecompany.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skylinecompany.dto.UsersDto;

@Service
public interface IUserService {
	
	public List<UsersDto> getAllUser();

}
