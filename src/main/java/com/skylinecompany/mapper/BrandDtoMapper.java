package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.dto.BrandDto;

public class BrandDtoMapper implements RowMapper<BrandDto>{

	@Override
	public BrandDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		BrandDto brand = new BrandDto();
		brand.setName(rs.getString("name"));
		return brand;
	}

}
