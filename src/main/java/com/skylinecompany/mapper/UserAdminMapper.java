package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.dto.UsersDto;

public class UserAdminMapper implements RowMapper<UsersDto>{

	@Override
	public UsersDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		UsersDto u = new UsersDto();
		u.setId_user(rs.getInt("id_user"));
		u.setFullName(rs.getString("fullName"));
		u.setEmail(rs.getString("email"));
		u.setPhone(rs.getString("phone"));
		u.setImageuser(rs.getString("imageuser"));
		u.setLatest_order_id(rs.getString("latest_order_id"));
		u.setTotal_order_amount(rs.getString("total_order_amount"));
		u.setTotal_orders(rs.getInt("total_orders"));
		return u;
	}

}
