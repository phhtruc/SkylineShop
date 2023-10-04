package com.skylinecompany.DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.skylinecompany.dto.Product_ImageDto;
import com.skylinecompany.mapper.Product_ImageMapper;

@Repository
public class SearchDAO extends BaseDAO{
	
	private String SqlString(){
		StringBuffer  varname1 = new StringBuffer();
		varname1.append("SELECT p.id_product, p.product_name, p.price, p.[desc], ");
		varname1.append("p.id_brand, p.id_cate, ( ");
		varname1.append("SELECT TOP 1 [image] FROM Product_Image WHERE id_product = p.id_product ");
		varname1.append(") AS [image] ");
		varname1.append("FROM Product p ");
		varname1.append("WHERE p.product_name like ? ");
		return varname1.toString();
	}
	public List<Product_ImageDto> findProductBySearchName(String name){
		String search = "%" + name + "%";
		List<Product_ImageDto> list = _jdbcTemplate.query(SqlString(), new Object[]{search}, new Product_ImageMapper());
		return list;
	}

}
