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
	
	//Lọc sản phẩm theo category
	private int findCategoryIdByName(String name) {
	    String sql = "SELECT id_cate FROM Category WHERE cate_name = ?";
	    return _jdbcTemplate.queryForObject(sql, Integer.class, name);
	}
	
	private String SqlString2(){
		StringBuffer  varname1 = new StringBuffer();
		varname1.append("SELECT p.id_product, p.product_name, p.price, p.[desc], ");
		varname1.append("p.id_brand, p.id_cate, ( ");
		varname1.append("SELECT TOP 1 [image] FROM Product_Image WHERE id_product = p.id_product ");
		varname1.append(") AS [image] ");
		varname1.append("FROM Product p ");
		varname1.append("WHERE p.id_cate = ?;");
		return varname1.toString();
	}
	public List<Product_ImageDto> findIdProduct(String name){
		int categoryId = findCategoryIdByName(name);
		List<Product_ImageDto> list = _jdbcTemplate.query(SqlString2(), new Object[]{categoryId}, new Product_ImageMapper()); //new Object[]{cate} sẽ truyền vào ?
		return list;
	}
	
	private int findIdBrandByName(String brand) {
		String sql = "select id_brand from Brand where brand_name = ?";
		return _jdbcTemplate.queryForObject(sql, Integer.class, brand);
	}
	
	private String SqlString1(){
		StringBuffer  varname1 = new StringBuffer();
		varname1.append("SELECT p.id_product, p.product_name, p.price, p.[desc], ");
		varname1.append("p.id_brand, p.id_cate, ( ");
		varname1.append("SELECT TOP 1 [image] FROM Product_Image WHERE id_product = p.id_product ");
		varname1.append(") AS [image] ");
		varname1.append("FROM Product p ");
		varname1.append("WHERE p.id_brand = ?;");
		return varname1.toString();
	}
	public List<Product_ImageDto> findProductByNameBrand(String brand){
		int BrandId = findIdBrandByName(brand);
		List<Product_ImageDto> list = _jdbcTemplate.query(SqlString1(), new Object[]{BrandId}, new Product_ImageMapper()); //new Object[]{cate} sẽ truyền vào ?
		return list;
	}
	
	
	
	
}
