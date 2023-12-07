package com.skylinecompany.api.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.skylinecompany.dto.UsersDto;
import com.skylinecompany.entity.UserEntity;
import com.skylinecompany.service.admin.impl.UserServiceImpl;

@RestController
public class UserAPI {
	
	@Autowired
	UserServiceImpl userServiceImpl;
	
	@GetMapping("/api/users")
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
	
	@PostMapping("/api/users")
	public ResponseEntity<?> createUsers(@RequestBody UserEntity userEntity) {
	    int count = userServiceImpl.AddAccount(userEntity);
	    List<UsersDto> user = userServiceImpl.getAllUser();

	    if (count > 0) {
	        // Xử lý thành công
	        for (UsersDto u : user) {
	            if (u.getTotal_order_amount() == null) {
	                u.setTotal_order_amount("0");
	            }
	            if (u.getLatest_order_id() == null) {
	                u.setLatest_order_id("");
	            }
	        }
	        return ResponseEntity.ok(user);
	    } else {
	        // Trả về một thông điệp lỗi và status code 500 (Internal Server Error)
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Đã xảy ra lỗi khi tạo người dùng.");
	    }
	}

	
	@PutMapping("/api/users/{id}")
	public List<UsersDto> updateUser(@PathVariable Integer id) {
		List<UsersDto> user = userServiceImpl.updateUserId(id);
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
	
	@DeleteMapping("/api/users/{id}")
	public List<UsersDto> deleteUser(@PathVariable Integer id) {
		List<UsersDto> user = userServiceImpl.deleteUserId(id);
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

}
