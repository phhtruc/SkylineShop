package com.skylinecompany.service.web.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.DAO.VoucherDAO;
import com.skylinecompany.entity.VoucherEntity;
import com.skylinecompany.service.web.IVoucherService;

@Service
public class VoucherServiceImpl implements IVoucherService{
	
	@Autowired
	private VoucherDAO v;

	@Override
	public VoucherEntity findVoucherByCode(String code) {
		// TODO Auto-generated method stub
		return v.findVoucherByCode(code);
	}

}
