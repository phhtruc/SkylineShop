package com.skylinecompany.service.web.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.skylinecompany.DAO.RoleDAO;
import com.skylinecompany.DAO.UserDAO;
import com.skylinecompany.dto.MyUser;
import com.skylinecompany.entity.RoleEntity;
import com.skylinecompany.entity.UserEntity;

//push thông tin người dùng lên session, Xử lý authenticaton check user and pass
// pass đươcj sử lý ở security rồi nên đây chỉ cần truyền vào username

@Service
public class CustomUserDetailsService implements UserDetailsService {

	// Autowired để nhúng hoặc gọi là khai báo để sử dung được @Repository, phải có
	// @Service mới chạy được
	@Autowired
	private UserDAO userDAO;

	@Autowired
	private RoleDAO roleDAO;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		UserEntity userEntity = userDAO.findOneByUserName(username);
		if (userEntity == null) {
			System.out.println("User not found");
		}
		

		// account tồn tại thì push info vào security, xong rồi chuyển sang
		// CustomSuccessHandler để làm authozication
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();

		for (RoleEntity role : roleDAO.findAll(username)) {
			authorities.add(new SimpleGrantedAuthority(role.getRole_name()));
		}

		// Thông tin được push vào MyUser(MyUser đươcj sử dụng như session)
		MyUser myUser = new MyUser(userEntity.getFullName(), userEntity.getPassword(), true, true, true, true,
				authorities); // nhu tao session
		myUser.setFullName(userEntity.getFullName());
		myUser.setPhone(userEntity.getPhone());
		myUser.setEmail(userEntity.getEmail());
		myUser.setId(userEntity.getId_user());
		return myUser;

	}


}
