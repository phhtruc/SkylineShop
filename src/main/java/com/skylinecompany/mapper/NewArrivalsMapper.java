package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.dto.NewArrivalsDto;

public class NewArrivalsMapper implements RowMapper<NewArrivalsDto>{

	@Override
	public NewArrivalsDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		NewArrivalsDto n = new NewArrivalsDto();
		n.setId_product(rs.getInt("id_product"));
		n.setProduct_name(rs.getString("product_name"));
		n.setPrice(rs.getDouble("price"));
		n.setImage(rs.getString("image"));
		return n;
	}
	
}
