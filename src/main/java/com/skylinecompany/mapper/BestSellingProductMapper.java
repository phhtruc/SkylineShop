package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.dto.BestSellingProductDto;

public class BestSellingProductMapper implements RowMapper<BestSellingProductDto>{

	@Override
	public BestSellingProductDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		BestSellingProductDto best = new BestSellingProductDto();
		best.setId_product(rs.getInt("id_product"));
		best.setProduct_name(rs.getString("product_name"));
		best.setPrice(rs.getDouble("price"));
		best.setImage(rs.getString("image"));
		return best;
	}
	
}
