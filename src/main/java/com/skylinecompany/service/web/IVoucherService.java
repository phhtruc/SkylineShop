package com.skylinecompany.service.web;

import org.springframework.stereotype.Service;

import com.skylinecompany.entity.VoucherEntity;

@Service
public interface IVoucherService {
	
	public VoucherEntity findVoucherByCode(String code);

}
