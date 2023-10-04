package com.skylinecompany.DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.skylinecompany.dto.NewArrivalsDto;
import com.skylinecompany.mapper.NewArrivalsMapper;

@Repository
public class NewArrivalsDAO extends BaseDAO{
	
	public List<NewArrivalsDto> findNewArricalsProduct(){
		String sql = "SELECT  p.id_product, p.product_name, p.price,(\r\n"
				+ "           SELECT TOP 1 [image] FROM Product_Image WHERE id_product = p.id_product\r\n"
				+ "       ) AS [image]\r\n"
				+ "FROM Product p \r\n"
				+ "WHERE p.price BETWEEN 300000 AND 600000";
		List<NewArrivalsDto> list = _jdbcTemplate.query(sql, new NewArrivalsMapper());
		return list;
	}
}
