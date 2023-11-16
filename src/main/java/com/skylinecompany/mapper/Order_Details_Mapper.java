package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.entity.Order_detais;

public class Order_Details_Mapper implements RowMapper<Order_detais>{

	@Override
	public Order_detais mapRow(ResultSet rs, int rowNum) throws SQLException {
		Order_detais o = new Order_detais();
		o.setProduct_name(rs.getString("product_name"));
		o.setQuantity(rs.getInt("quantity"));
		o.setTotal(rs.getDouble("total"));
		o.setImage(rs.getString("image"));
		return o;
	}

}
