package com.skylinecompany.DAO;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.skylinecompany.dto.Product_ImageDto;
import com.skylinecompany.mapper.Product_ImageMapper;

@Repository
public class Product_ImageDAO extends BaseDAO {

	private StringBuffer SqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT");
		sql.append("    p.id_product, ");
		sql.append("    p.product_name, ");
		sql.append("    p.price, ");
		sql.append("    p.[desc], ");
		sql.append("    p.id_brand, ");
		sql.append("    p.id_cate, ");
		sql.append("    (SELECT TOP 1 [image] FROM Product_Image WHERE id_product = p.id_product) AS [image] ");
		sql.append("FROM ");
		sql.append("Product p	");
		return sql;
	}

	public List<Product_ImageDto> findAllProduct_Image() {
		String sql = SqlString().toString();
		List<Product_ImageDto> list = _jdbcTemplate.query(sql, new Product_ImageMapper());
		return list;
	}

	// Lọc sản phẩm theo category
	private int findCategoryIdByName(String name) {
		String sql = "SELECT id_cate FROM Category WHERE cate_name = ?";
		return _jdbcTemplate.queryForObject(sql, Integer.class, name);
	}

	private StringBuffer SqlFindAllProductByNameCategory(String name) {
		int idCate = findCategoryIdByName(name);
		StringBuffer varname1 = SqlString();
		varname1.append("WHERE p.id_cate = "+idCate+"");
		return varname1;
	}

	public List<Product_ImageDto> findProductByNameCategory(String name) {
		//int categoryId = findCategoryIdByName(name);
		String sql = SqlFindAllProductByNameCategory(name).toString();
		//List<Product_ImageDto> list = _jdbcTemplate.query(sql, new Object[] { categoryId }, new Product_ImageMapper()); // new Object[]{cate} sẽ truyền vào ?
		List<Product_ImageDto> list = _jdbcTemplate.query(sql, new Product_ImageMapper()); // new Object[]{cate} sẽ truyền vào ?
		return list;
	}

	// Lọc sản phẩm theo Brand
	private int findIdBrandByName(String brand) {
		String sql = "select id_brand from Brand where brand_name = ?";
		return _jdbcTemplate.queryForObject(sql, Integer.class, brand);
	}

	private StringBuffer SqlFindAllProductByNameBrand(String name) {
		int idBrand = findIdBrandByName(name);
		StringBuffer varname1 = SqlString();
		varname1.append("WHERE p.id_brand = "+idBrand+"");
		return varname1;
	}

	public List<Product_ImageDto> findProductByNameBrand(String brand) {
		String sql = SqlFindAllProductByNameBrand(brand).toString();
		List<Product_ImageDto> list = _jdbcTemplate.query(sql, new Product_ImageMapper());
		return list;
	}

	// Lọc sản phẩm theo giá
	private String SqlString3() {
		StringBuffer varname1 = new StringBuffer();
		varname1.append("SELECT p.id_product, p.product_name, p.price, p.[desc], ");
		varname1.append("p.id_brand, p.id_cate, ( ");
		varname1.append("SELECT TOP 1 [image] FROM Product_Image WHERE id_product = p.id_product ");
		varname1.append(") AS [image] ");
		varname1.append("FROM Product p ");
		varname1.append("ORDER BY p.price ?;");
		return varname1.toString();
	}

	public List<Product_ImageDto> findProductByPrice(String sort) {
		List<Product_ImageDto> list = _jdbcTemplate.query(SqlString3(), new Object[] { sort },
				new Product_ImageMapper());
		return list;
	}

	private StringBuffer SqlfindAllProductsPaginate(int start, int totalPage) {
		StringBuffer sql = SqlString();
		sql.append("    ORDER BY p.id_product");
		sql.append("    OFFSET " + start + " ROWS");
		sql.append("    FETCH NEXT " + totalPage + " ROWS ONLY");
		return sql;
	}
	
	private StringBuffer SqlfindAllProductsPaginateByCategory(String name, int start, int totalPage) {
		StringBuffer sql = SqlFindAllProductByNameCategory(name);
		sql.append("    ORDER BY p.id_product");
		sql.append("    OFFSET " + start + " ROWS");
		sql.append("    FETCH NEXT " + totalPage + " ROWS ONLY");
		return sql;
	}
	
	private StringBuffer SqlfindAllProductsPaginateByBrand(String name, int start, int totalPage) {
		StringBuffer sql = SqlFindAllProductByNameBrand(name);
		sql.append("    ORDER BY p.id_product");
		sql.append("    OFFSET " + start + " ROWS");
		sql.append("    FETCH NEXT " + totalPage + " ROWS ONLY");
		return sql;
	}

	public List<Product_ImageDto> GetDataProductsPaginate(String cate, String brand, int start, int totalPage) {
		List<Product_ImageDto> listProducts = new ArrayList<Product_ImageDto>();
		String sql = "";
		if(cate != null ) {
			sql = SqlfindAllProductsPaginateByCategory(cate, start, totalPage).toString();
		}else if(brand != null) {
			sql = SqlfindAllProductsPaginateByBrand(brand, start, totalPage).toString();
		}else {
			sql = SqlfindAllProductsPaginate(start, totalPage).toString();
		}
		listProducts = _jdbcTemplate.query(sql, new Product_ImageMapper());
		return listProducts;
	}
	
	// Card
	private StringBuffer SqlFindProductById(int id) {
		StringBuffer varname1 = SqlString();
		varname1.append("WHERE p.id_product = "+id+"");
		return varname1;
	}

	public Product_ImageDto findProductById(int id) {
		String sql = SqlFindProductById(id).toString();
		Product_ImageDto product = _jdbcTemplate.queryForObject(sql, new Product_ImageMapper());
		return product;
	}
}
