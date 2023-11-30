package com.skylinecompany.DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.skylinecompany.entity.ProductEntity;
import com.skylinecompany.mapper.ProductMapper;

@Repository
public class ProductDAO extends BaseDAO{
	
	private StringBuffer SqlGetAllProduct() {
		StringBuffer  varname1 = new StringBuffer();
		varname1.append("SELECT p.id_product, p.product_name, format(p.price,'##,#\\ VNĐ','es-ES') AS price, p.[desc], b.brand_name, c.cate_name ");
		varname1.append("FROM Product p JOIN Brand b ON p.id_brand = b.id_brand ");
		varname1.append("JOIN Category c ON p.id_cate = c.id_cate");
		return varname1;
	}
	
	public List<ProductEntity> getAllProduct(){
		String sql = SqlGetAllProduct().toString();
		List<ProductEntity> list = _jdbcTemplate.query(sql, new ProductMapper());
		return list;
	}

}
