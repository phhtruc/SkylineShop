package com.skylinecompany.DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.skylinecompany.dto.BestSellingProductDto;
import com.skylinecompany.mapper.BestSellingProductMapper;

@Repository
public class BestSellingProductDAO extends BaseDAO{
	
	public List<BestSellingProductDto> findBestSellingProduct(){
		String sql = "SELECT  p.id_product, p.product_name, p.price,(\r\n"
				+ "           SELECT TOP 1 [image] FROM Product_Image WHERE id_product = p.id_product\r\n"
				+ "       ) AS [image]\r\n"
				+ "FROM Product p \r\n"
				+ "WHERE p.price > 800000";
		List<BestSellingProductDto> list = _jdbcTemplate.query(sql, new BestSellingProductMapper());
		return list;
	}
}
