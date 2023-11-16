package com.skylinecompany.DAO;

import org.springframework.stereotype.Repository;

import com.skylinecompany.dto.ItemsDto;
import com.skylinecompany.dto.Product_ImageDto;
import com.skylinecompany.entity.Order;
import com.skylinecompany.entity.Order_detais;
import com.skylinecompany.mapper.Order_Details_Mapper;
import com.skylinecompany.mapper.Product_ImageMapper;

import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
@Repository
public class OrderDAO extends BaseDAO{
	
	public int createOrder(Order order) {
	    String sql = "INSERT INTO [Order] (id_cust, date_create, [address], phone, email, note, payment_status) " +
	                 "VALUES (?, CURRENT_TIMESTAMP, ?, ?, ?, ?, ?)";

	    KeyHolder keyHolder = new GeneratedKeyHolder();

	    int insert = _jdbcTemplate.update(new PreparedStatementCreator() {
	        @Override
	        public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
	            PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
	            ps.setInt(1, order.getId_user());
	            ps.setString(2, order.getAddress());
	            ps.setString(3, order.getPhone());
	            ps.setString(4, order.getEmail());
	            ps.setString(5, order.getNote());
	            ps.setString(6, order.getPayment_status());
	            return ps;
	        }
	    }, keyHolder);

	    // Lấy giá trị id_order sau khi thêm vào cơ sở dữ liệu
	    if (insert > 0) {
	        order.setId_order(keyHolder.getKey().intValue());
	    } else {
	        // Thực hiện truy vấn để lấy giá trị id_order nếu không lấy được từ keyHolder
	        String identitySql = "SELECT SCOPE_IDENTITY() AS id_order";
	        order.setId_order(_jdbcTemplate.queryForObject(identitySql, Integer.class));
	    }

	    return order.getId_order();
	}

	
	public void createOrderDetails(Order order, List<ItemsDto> item) {
		int id = createOrder(order);
		for (ItemsDto cartItem : item) {
		    String sql = "INSERT INTO Order_Detail(id_product, id_order, quantity, total) VALUES (?, ?, ?, ?)";
		    _jdbcTemplate.update(sql,cartItem.getProduct().getId_product(),id, cartItem.getQuantity(), cartItem.getTotalPrice());
		}
	}
	
	public int findIdUser(String name) {
		String sql = "select id_user from [User] where email = ?";
		return _jdbcTemplate.queryForObject(sql, Integer.class, name);
	}
	
	private StringBuffer SqlString(int id) {
		StringBuffer  varname1 = new StringBuffer();
		varname1.append("SELECT p.product_name, o.quantity,o.total, ( ");
		varname1.append("    SELECT TOP 1 [image] FROM Product_Image WHERE id_product = p.id_product ");
		varname1.append(") AS [image] ");
		varname1.append("FROM ");
		varname1.append("    [Order_Detail] o ");
		varname1.append("JOIN ");
		varname1.append("    [Product] p ON o.id_product = p.id_product ");
		varname1.append("JOIN ");
		varname1.append("    [Order] Ord ON o.id_order = Ord.id_order ");
		varname1.append("WHERE Ord.id_cust = "+id+"");
		return varname1;
	}
	
	public List<Order_detais> findAll(int id){
		String sql = SqlString(id).toString();
		List<Order_detais> list = _jdbcTemplate.query(sql, new Order_Details_Mapper());
		return list;
	}
}
