package com.skylinecompany.DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.skylinecompany.dto.HotSalesDto;
import com.skylinecompany.mapper.HotSalesMapper;

@Repository
public class HotSalesDAO extends BaseDAO{
	
	public List<HotSalesDto> findHotSalesProduct(){
		String sql = "SELECT  p.id_product, p.product_name, p.price,(\r\n"
				+ "           SELECT TOP 1 [image] FROM Product_Image WHERE id_product = p.id_product\r\n"
				+ "       ) AS [image]\r\n"
				+ "FROM Product p \r\n"
				+ "WHERE p.price < 200000";
		List<HotSalesDto> list = _jdbcTemplate.query(sql, new HotSalesMapper());
		return list;
	}
}
