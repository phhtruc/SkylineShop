package com.skylinecompany.DAO;

import org.springframework.stereotype.Repository;

import com.skylinecompany.dto.ItemsDto;
import com.skylinecompany.entity.Order;
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
        }

        return insert;
    }
	
	public void createOrderDetails(Order order, List<ItemsDto> item) {
		int id = createOrder(order);
		for (ItemsDto cartItem : item) {
		    String sql = "INSERT INTO Order_Detail(id_product, id_order, quantity, total) VALUES (?, ?, ?, ?)";
		    _jdbcTemplate.update(sql,cartItem.getProduct().getId_product(),id, cartItem.getQuantity(), cartItem.getTotalPrice());
		}
	}
}
