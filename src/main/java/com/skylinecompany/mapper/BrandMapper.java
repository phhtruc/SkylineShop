package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.entity.BrandEntity;

public class BrandMapper implements RowMapper<BrandEntity>{

	@Override
	public BrandEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
		BrandEntity b = new BrandEntity();
		b.setId_brand(rs.getInt("id_brand"));
		b.setBrand_name(rs.getString("brand_name"));
		return b;
	}

}
