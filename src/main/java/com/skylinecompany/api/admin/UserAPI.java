package com.skylinecompany.api.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skylinecompany.dto.UsersDto;
import com.skylinecompany.service.admin.impl.UserServiceImpl;

@RestController
@RequestMapping("/api/users")
public class UserAPI {
	
	@Autowired
	UserServiceImpl userServiceImpl;
	
	@GetMapping
    public List<UsersDto> getAllUsers() {
		List<UsersDto> user = userServiceImpl.getAllUser();
		for(UsersDto u : user) {
			if(u.getTotal_order_amount() == null) {
				u.setTotal_order_amount("0");;
			}
			if(u.getLatest_order_id() == null) {
				u.setLatest_order_id("");
			}
		}
        return user;
    }
	
	@PutMapping("/api/users/{id}")
	public String updateUser(@PathVariable Integer id) {
		return "Ok";
	}
	
	@DeleteMapping("/api/users/{id}")
	public String deleteUser(@PathVariable Integer id) {
		return "Ok";
	}

}
