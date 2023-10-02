package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.entity.CategoryEntity;

public class CategoryMapper implements RowMapper<CategoryEntity>{

	@Override
	public CategoryEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
		CategoryEntity cate = new CategoryEntity();
		cate.setId_cate(rs.getInt("id_cate"));
		cate.setCate_name(rs.getString("cate_name"));
		return cate;
	}

}
