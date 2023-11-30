package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.entity.UserEntity;

public class UserAdminMapper implements RowMapper<UserEntity>{

	@Override
	public UserEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
		UserEntity u = new UserEntity();
		u.setId_user(rs.getInt("id_user"));
		u.setFullName(rs.getString("fullName"));
		u.setEmail(rs.getString("email"));
		u.setPhone(rs.getString("phone"));
		u.setImageuser(rs.getString("imageuser"));
		return u;
	}

}
