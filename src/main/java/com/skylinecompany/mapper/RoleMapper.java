package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.entity.RoleEntity;

public class RoleMapper implements RowMapper<RoleEntity>{

	@Override
	public RoleEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
		RoleEntity r = new RoleEntity();
		r.setId_role(rs.getInt("id_role"));
		r.setRole_name(rs.getString("role_name"));
		return r;
	}

}
