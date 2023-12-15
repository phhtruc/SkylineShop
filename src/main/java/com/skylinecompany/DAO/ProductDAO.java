package com.skylinecompany.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import com.skylinecompany.entity.FileEntity;
import com.skylinecompany.entity.ProductEntity;
import com.skylinecompany.entity.Product_ImageEntity;
import com.skylinecompany.mapper.FileMapper;
import com.skylinecompany.mapper.ProductMapper;
import com.skylinecompany.mapper.Product_ImageEntityMapper;

@Repository
public class ProductDAO extends BaseDAO{
	
	@Autowired
	Product_ImageDAO pr;
	
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
	
	public List<ProductEntity> deleteProductById(int id) {
		String sql = "delete from Product where id_product = ?";
		_jdbcTemplate.update(sql, new Object[] {id});
		List<ProductEntity> list = getAllProduct();
		return list;
	}
	
	
	public int addProduct(ProductEntity p) {
		String sql = "insert into Product(product_name, price, [desc], id_brand, id_cate)"
				+ "values(?,?,?,?,?)";
		KeyHolder keyHolder = new GeneratedKeyHolder();

	    int insert = _jdbcTemplate.update(new PreparedStatementCreator() {
	        @Override
	        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
	            PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
	            ps.setString(1, p.getProduct_name());
	            ps.setString(2, p.getPrice());
	            ps.setString(3, p.getDesc());
	            ps.setInt(4, pr.findIdBrandByName(p.getBrand_name()));
	            ps.setInt(5, pr.findCategoryIdByName(p.getCate_name()));
	            return ps;
	        }
	    }, keyHolder);

	    // Lấy giá trị id_product sau khi thêm vào cơ sở dữ liệu
	    if (insert > 0) {
	        p.setId_product(keyHolder.getKey().intValue());
	    } else {
	        // Thực hiện truy vấn để lấy giá trị id_product nếu không lấy được từ keyHolder
	        String identitySql = "SELECT SCOPE_IDENTITY() AS id_product";
	        p.setId_product(_jdbcTemplate.queryForObject(identitySql, Integer.class));
	    }

	    return p.getId_product();
	}
	
	public List<ProductEntity> addProductImage(ProductEntity p, List<FileEntity> list){
		int idProduct = addProduct(p);
		for(FileEntity file : list) {
			String sql ="insert into Product_Image(image, id_product) values(?,?)";
			_jdbcTemplate.update(sql, file.getFileName(), idProduct);
		}
		List<ProductEntity> l = getAllProduct();
		return l;
	}
	
	//Lấy 1 sản phẩm theo id
	public ProductEntity getOneProductById(int id) {
		String sql = "SELECT p.id_product, p.product_name, p.price, p.[desc], b.brand_name, c.cate_name\r\n"
					+ "FROM Product p JOIN Brand b ON p.id_brand = b.id_brand JOIN Category c ON p.id_cate = c.id_cate\r\n"
					+ "WHERE p.id_product = ?";
		ProductEntity p = _jdbcTemplate.queryForObject(sql, new Object[] {id}, new ProductMapper());
		return p;
	}
	
	public List<FileEntity> getAllImages(int id) {
		String sql = "SELECT IMAGE \r\n"
				+ "FROM Product_Image\r\n"
				+ "WHERE id_product = ?";
		List<FileEntity> list = _jdbcTemplate.query(sql, new Object[] {id}, new FileMapper());
		return list;
	}
	
	//Lấy danh sách id_image
	private List<Product_ImageEntity> getIdImage(int id){
		String sql = "select id_image from Product_Image where id_product = ?";
		List<Product_ImageEntity> list = _jdbcTemplate.query(sql, new Object[] {id}, new Product_ImageEntityMapper());
		return list;
	}
	
	//Update Product
	public void UpadteProduct(ProductEntity p){
		String sql = "UPDATE Product\r\n"
					+ " SET product_name = '"+p.getProduct_name()+"', price = '"+p.getPrice()+"', [desc] = '"+p.getDesc()+"', id_brand = '"+pr.findIdBrandByName(p.getBrand_name())+"', id_cate = '"+pr.findCategoryIdByName(p.getCate_name())+"'\r\n"
					+ " WHERE id_product = '"+p.getId_product()+"'";
		_jdbcTemplate.update(sql);
	}
	
	//Update image in Product_Image
	public List<ProductEntity> updateProductImage(int id, ProductEntity p, List<FileEntity> list){
		UpadteProduct(p);
		List<Product_ImageEntity> listIdImage = getIdImage(id);
		for(int i = 1 ; i <= listIdImage.size(); i++) {
			String sql ="UPDATE Product_Image\r\n"
					+ " SET image = ?\r\n"
					+ " WHERE id_image = ?";
			_jdbcTemplate.update(sql, list.get(i), listIdImage.get(i));
		}
		List<ProductEntity> l = getAllProduct();
		return l;
	}

}
