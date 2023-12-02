package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.dto.OrderDto;

public class OrderDtoMapper implements RowMapper<OrderDto>{

	@Override
	public OrderDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		OrderDto o = new OrderDto();
		o.setId_order(rs.getInt("id_order"));
		o.setDate(rs.getString("date"));
		o.setFullName(rs.getString("fullName"));
		o.setPayment_status(rs.getString("payment_status"));
		o.setTotal_amount(rs.getString("total_amount"));
		return o;
	}
	

}
