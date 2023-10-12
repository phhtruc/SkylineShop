package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.entity.ImageEntity;

public class ImageMapper implements RowMapper<ImageEntity>{

	@Override
	public ImageEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
		ImageEntity e = new ImageEntity();
		e.setId_image(rs.getInt("id_image"));
		e.setImage(rs.getString("image"));
		e.setId_product(rs.getInt("id_product"));
		return e;
	}
	
}
