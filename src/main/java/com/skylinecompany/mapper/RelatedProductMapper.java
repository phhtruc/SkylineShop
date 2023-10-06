package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.dto.RelatedProductDto;

public class RelatedProductMapper implements RowMapper<RelatedProductDto> {

	@Override
	public RelatedProductDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		RelatedProductDto p = new RelatedProductDto();
		p.setId_product(rs.getInt("id_product"));
		p.setProduct_name(rs.getString("product_name"));
		p.setPrice(rs.getDouble("price"));
		p.setDesc(rs.getString("desc"));
		p.setId_brand(rs.getInt("id_brand"));
		p.setId_cate(rs.getInt("id_cate"));
		p.setImage(rs.getString("image"));
		return p;
	}

}
