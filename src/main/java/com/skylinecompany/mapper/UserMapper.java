package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.entity.UserEntity;

public class UserMapper implements RowMapper<UserEntity>{

	@Override
	public UserEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
		UserEntity e = new UserEntity();
		e.setId_user(rs.getInt("id_user"));
		e.setUserName(rs.getString("userName"));
		e.setEmail(rs.getString("email"));
		e.setPhone(rs.getString("phone"));
		e.setPassword(rs.getString("password"));
		e.setId_role(rs.getInt("id_role"));
		e.setFullName(rs.getString("fullName"));
		return e;
	}
	
	

}
