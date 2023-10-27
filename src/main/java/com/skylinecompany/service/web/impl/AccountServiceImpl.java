package com.skylinecompany.service.web.impl;


import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.skylinecompany.DAO.UsersDAO;
import com.skylinecompany.entity.Users;
import com.skylinecompany.service.web.*;
public class AccountServiceImpl implements IAccountService{
	private AccountRepository accountRepository;
	@Autowired
	UsersDAO userdao = new UsersDAO();
	public int AddAccount(Users user) {
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
		return userdao.AddAccount(user);
	}
}
