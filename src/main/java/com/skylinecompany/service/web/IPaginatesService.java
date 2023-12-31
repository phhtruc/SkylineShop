package com.skylinecompany.service.web;

import org.springframework.stereotype.Service;

import com.skylinecompany.dto.PaginatesDto;

//Chứa các output của phân trang, tổng số trang, trang hiện tại, trang bắt đầu trang kết thúc, số sản phẩm 1 trang, số sản phẩm trong 1 trang(limit)
@Service
public interface IPaginatesService {
	public PaginatesDto getInfoPaginate(int totalData, int limit, int currentPage);
}
