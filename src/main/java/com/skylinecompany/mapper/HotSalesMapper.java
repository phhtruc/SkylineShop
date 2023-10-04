package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.dto.HotSalesDto;

public class HotSalesMapper implements RowMapper<HotSalesDto>{

	@Override
	public HotSalesDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		HotSalesDto h = new HotSalesDto();
		h.setId_product(rs.getInt("id_product"));
		h.setProduct_name(rs.getString("product_name"));
		h.setPrice(rs.getDouble("price"));
		h.setImage(rs.getString("image"));
		return h;
	}
	
}
