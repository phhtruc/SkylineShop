package com.skylinecompany.service.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.entity.Order_detais;
import com.skylinecompany.entity.UserEntity;
import com.skylinecompany.entity.VoucherEntity;

@Service
public interface  IAccountService {
	
	@Autowired
	public int AddAccount(UserEntity user);
	
	@Autowired
	public int UpdateAccount(UserEntity user);
	
	@Autowired
	public UserEntity findOneByUserName(String name);
	
	@Autowired
	public List<Order_detais> findAll(int id);
	
	@Autowired
	public List<VoucherEntity> findAllVoucher(int id);
	
}
