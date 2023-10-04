package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.dto.Product_ImageDto;

public class Product_ImageMapper implements RowMapper<Product_ImageDto> {

	@Override
	public Product_ImageDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		Product_ImageDto p = new Product_ImageDto();
		p.setId_product(rs.getInt("id_product"));
		p.setProduct_name(rs.getString("product_name"));
		p.setPrice(rs.getDouble("price"));
		p.setDesc(rs.getString("desc"));
		p.setBrand(rs.getString("brand"));
		p.setId_cate(rs.getInt("id_cate"));
		p.setImage(rs.getString("image"));
		return p;
	}

}
