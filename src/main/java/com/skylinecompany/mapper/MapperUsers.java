package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.entity.Users;

public class MapperUsers implements RowMapper<Users> {

	@Override
	public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
		Users user = new Users();
		user.setId_user(rs.getInt("id"));
		user.setUsername(rs.getString("username"));
		user.setEmail(rs.getString("registerEmail"));
		user.setPhone(rs.getString("Mobile"));
		user.setPassword(rs.getString("registerPassword"));
		user.setId_role(rs.getInt("idrole"));
		return user;
	}

}
