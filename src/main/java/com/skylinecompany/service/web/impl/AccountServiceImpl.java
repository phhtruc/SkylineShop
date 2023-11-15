package com.skylinecompany.service.web.impl;

import java.nio.charset.StandardCharsets;
import java.util.Random;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.DAO.UserDAO;
import com.skylinecompany.entity.UserEntity;
import com.skylinecompany.service.web.IAccountService;

@Service
public class AccountServiceImpl implements IAccountService {

	@Autowired
	UserDAO u = new UserDAO();

	@Override
	public int AddAccount(UserEntity user) {
		if (u.checkPhoneExist(user.getPhone()) > 0 || u.checkEamilExist(user.getEmail()) > 0) {
			// Số điện thoại hoặc email của người dùng đã tồn tại
			return 0;
		} else {
			user.setFullName(new String(user.getFullName().getBytes(), StandardCharsets.UTF_8));
			user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
			return u.AddAccount(user);
		}
	}

	public int AddAccountGoogle(UserEntity user) {
		if (u.checkEamilExist(user.getEmail()) > 0) {
			//email của người dùng đã tồn tại
			return 0;
		} else {
			user.setPhone(RandomNumberGenerator());
			user.setPassword(" ");
			user.setFullName(" ");
			return u.AddAccount(user);
		}
	}

	@Override
	public int UpdateAccount(UserEntity user) {
		if (user.getPasswordconfirm().equals(user.getPassword())) {

			user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
			// Số điện thoại hoặc email của người dùng đã tồn tại
			return u.UpdateAccount(user);
		} else {
			return 0;
		}

	}

	public int UpdateAccountProfile(UserEntity user) {
		if (user != null) {
			return u.UpdateAccountProfile(user);
		} else {
			return 0;
		}

	}

	public int ChangePassword(UserEntity user) {
		if(user!=null) {
			return u.ChangePassword(user);
		}
		else {
			return 0;
		}

	}

	@Override
	public UserEntity findOneByUserName(String name) {
		return u.findOneByUserName(name);
	}

	public String RandomNumberGenerator() {
		Random random = new Random();

		int randomNumber = random.nextInt(1000000000);

		String result = "0" + String.format("%09d", randomNumber);

		return result;
	}

}
