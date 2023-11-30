package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.entity.ProductEntity;

public class ProductMapper implements RowMapper<ProductEntity>{

	@Override
	public ProductEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductEntity p = new ProductEntity();
		p.setId_product(rs.getInt("id_product"));
		p.setProduct_name(rs.getString("product_name"));
		p.setPrice(rs.getString("price"));
		p.setDesc(rs.getString("desc"));
		p.setBrand_name(rs.getString("brand_name"));
		p.setCate_name(rs.getString("cate_name"));
		return p;
	}
}
