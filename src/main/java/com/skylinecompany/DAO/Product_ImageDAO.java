package com.skylinecompany.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.skylinecompany.dto.Product_ImageDto;
import com.skylinecompany.mapper.Product_ImageMapper;

@Repository
public class Product_ImageDAO {
	
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	private String SqlString(){
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("    p.id_product, ");
		sql.append("    p.product_name, ");
		sql.append("    p.price, ");
		sql.append("    p.[desc], ");
		sql.append("    p.id_brand, ");
		sql.append("    p.id_cate, ");
		sql.append("    (SELECT TOP 1 [image] FROM Product_Image WHERE id_product = p.id_product) AS [image] ");
		sql.append("FROM ");
		sql.append("    Product p;");
		return sql.toString();
	}
	
	public List<Product_ImageDto> findAllProduct_Image(){
		String sql = SqlString();
		List<Product_ImageDto> list = _jdbcTemplate.query(sql, new Product_ImageMapper());
		return list;
	}
	
	
	private String SqlString1(int cate){
		StringBuffer  varname1 = new StringBuffer();
		varname1.append("SELECT p.id_product, p.product_name, p.price, p.[desc], ");
		varname1.append("p.id_brand, p.id_cate, ( ");
		varname1.append("SELECT TOP 1 [image] FROM Product_Image WHERE id_product = p.id_product ");
		varname1.append(") AS [image] ");
		varname1.append("FROM Product p ");
		varname1.append("WHERE p.id_cate = ?;");
		return varname1.toString();
	}
	public List<Product_ImageDto> findIdProduct(int cate){
		List<Product_ImageDto> list = _jdbcTemplate.query(SqlString1(cate), new Object[]{cate}, new Product_ImageMapper()); //new Object[]{cate} sẽ truyền vào ?
		return list;
	}
	
	
}
