package com.skylinecompany.DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.skylinecompany.dto.Product_ImageDto;
import com.skylinecompany.dto.RelatedProductDto;
import com.skylinecompany.entity.ImageEntity;
import com.skylinecompany.mapper.ImageMapper;
import com.skylinecompany.mapper.Product_ImageMapper;
import com.skylinecompany.mapper.RelatedProductMapper;

@Repository
public class ProductDetailsDAO extends BaseDAO{
	
	
	// Tìm id product theo tên product
	private int findIdProduct_ImageByName(String name) {
		String sql = "select id_product\r\n"
				+ "from Product\r\n"
				+ "where product_name = ?";
		return _jdbcTemplate.queryForObject(sql, Integer.class, name);
	}
	//Lấy tất cả ảnh có id_product
	public List<ImageEntity> findAllImage(String name){
		int idProdcut = findIdProduct_ImageByName(name);
		String sql ="select *\r\n"
				+ "from Product_Image\r\n"
				+ "where id_product = ?";
		List<ImageEntity> list = _jdbcTemplate.query(sql, new Object[] {idProdcut}, new ImageMapper());
		return list;
	}
	
	private String SqlString2(){
		StringBuffer  varname1 = new StringBuffer();
		varname1.append("SELECT p.id_product, p.product_name, p.price, p.[desc], ");
		varname1.append("p.id_brand, p.id_cate, ( ");
		varname1.append("SELECT TOP 1 [image] FROM Product_Image WHERE id_product = p.id_product ");
		varname1.append(") AS [image] ");
		varname1.append("FROM Product p ");
		varname1.append("WHERE p.id_product = ?;");
		return varname1.toString();
	}
	
	public Product_ImageDto findProductById(String name){
	    int idProduct = findIdProduct_ImageByName(name);
	    Product_ImageDto product = _jdbcTemplate.queryForObject(SqlString2(), new Object[]{idProduct}, new Product_ImageMapper());
	    return product; // Trả về product, không phải là findProductById
	}
	
	
	//Tìm idCate từ idProduct
	private int findIdCateByIdProduct(String name) {
		int idProduct = findIdProduct_ImageByName(name);
		String sql = "Select id_cate From Product Where id_product = ?";
		return _jdbcTemplate.queryForObject(sql, Integer.class, idProduct);
	}
	//Tìm Product từ idCate
	public List<RelatedProductDto> findRelatedProductByIdCate(String name){
		String sql = "SELECT TOP 4 p.id_product, p.product_name, p.price, p.[desc], p.id_cate, p.id_brand,(\r\n"
			    + "    SELECT TOP 1 [image] FROM Product_Image WHERE id_product = p.id_product\r\n"
			    + ") AS [image]\r\n"
			    + "FROM Product p \r\n"
			    + "WHERE p.id_cate = ?\r\n"
			    + "ORDER BY NEWID();";
		int idCate = findIdCateByIdProduct(name);
		List<RelatedProductDto> list = _jdbcTemplate.query(sql, new Object[] {idCate}, new RelatedProductMapper());
		return list;
	}
}
