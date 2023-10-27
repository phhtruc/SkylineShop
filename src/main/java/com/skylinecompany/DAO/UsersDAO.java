package com.skylinecompany.DAO;

import org.springframework.stereotype.Repository;

import com.skylinecompany.entity.Users;
@Repository 
public class UsersDAO extends BaseDAO {
	public int AddAccount(Users user) {
		StringBuilder sql = new StringBuilder();
		sql.append("INSERT INTO [User] (username, email, password, phone) ");
		sql.append("VALUES ('"+user.getUsername()+"', '"+user.getEmail()+"', '"+user.getPassword()+"', '"+user.getPhone()+"')");

		int insert = _jdbcTemplate.update(sql.toString());

		return insert;
	}
}
