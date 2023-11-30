package com.skylinecompany.api.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skylinecompany.entity.UserEntity;
import com.skylinecompany.service.admin.impl.UserServiceImpl;

@RestController
@RequestMapping("/api/users")
public class UserAPI {
	
	@Autowired
	UserServiceImpl userServiceImpl;
	
	@GetMapping
    public List<UserEntity> getAllUsers() {
        return userServiceImpl.getAllUser();
    }

}
