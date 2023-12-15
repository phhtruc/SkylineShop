package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.entity.Product_ImageEntity;


public class Product_ImageEntityMapper implements RowMapper<Product_ImageEntity>{

	@Override
	public Product_ImageEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
		Product_ImageEntity p = new Product_ImageEntity();
		p.setId_image(rs.getInt("id_image"));
		return p;
	}
	
	

}
