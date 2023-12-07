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
		e.setFullName(rs.getString("fullName"));
		e.setEmail(rs.getString("email"));
		e.setPhone(rs.getString("phone"));
		e.setPassword(rs.getString("password"));
		e.setId_role(rs.getInt("id_role"));
		e.setImageuser(rs.getString("imageuser"));
		e.setStatus(rs.getInt("status"));
		return e;
	}
	
	

}
