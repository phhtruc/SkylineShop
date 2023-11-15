package com.skylinecompany.DAO;

import java.nio.charset.StandardCharsets;

import org.springframework.stereotype.Repository;

import com.skylinecompany.entity.UserEntity;
import com.skylinecompany.mapper.UserMapper;

@Repository
public class UserDAO extends BaseDAO {

	public UserEntity findOneByUserName(String name) {
		String sql = "select * from [User] where email = ?";
		UserEntity user = _jdbcTemplate.queryForObject(sql, new Object[] { name }, new UserMapper());
		return user;
	}

	public int checkPhoneExist(String phone) {
		String sql = "SELECT COUNT(*) FROM [User] WHERE phone = ?";
		int count = _jdbcTemplate.queryForObject(sql, Integer.class, phone);
		return count;
	}

	public int checkEamilExist(String email) {
		String sql = "SELECT COUNT(*) FROM [User] WHERE email = ?";
		int count = _jdbcTemplate.queryForObject(sql, Integer.class, email);
		return count;
	}

	public int AddAccount(UserEntity user) {
		  StringBuilder sql = new StringBuilder();
		  sql.append("INSERT INTO [User] (email, phone, password, id_role, fullName)");
		  sql.append("VALUES ('" + new String(user.getEmail().getBytes(), StandardCharsets.UTF_8) + "', '" + new String(user.getPhone().getBytes(), StandardCharsets.UTF_8) + "', '" + new String(user.getPassword().getBytes(), StandardCharsets.UTF_8) + "', '" + user.getId_role() + "', '" + new String(user.getFullName().getBytes(), StandardCharsets.UTF_8) + "')");

		  int insert = _jdbcTemplate.update(sql.toString());

		  return insert;
	}


	public int UpdateAccount(UserEntity user) {
		StringBuilder sql = new StringBuilder();
		sql.append("Update [User] ");
		sql.append("set [password]='" + user.getPassword() + "' ");
		sql.append("where email = '" + user.getEmail() + "'");

		int insert = _jdbcTemplate.update(sql.toString());

		return insert;
	}
	public int UpdateAccountProfile(UserEntity user) {
		StringBuilder sql = new StringBuilder();
		sql.append("Update [User] ");
		sql.append("set [fullName]=N'" + user.getFullName() + "' ");
		sql.append(", [email]='" + user.getEmail() + "' ");
		sql.append(", [phone]='" + user.getPhone() + "' ");
		sql.append(", [imageuser]='" + user.getImageuser() + "' ");
		sql.append("where id_user = " + user.getId_user() + "");

		int insert = _jdbcTemplate.update(sql.toString());

		return insert;
	}
	public int ChangePassword(UserEntity user) {
		StringBuilder sql = new StringBuilder();
		sql.append("Update [User] ");
		sql.append("set [password]='" + user.getPassword() + "' ");
		sql.append("where id_user = " + user.getId_user() + "");
		int insert = _jdbcTemplate.update(sql.toString());

		return insert;
	}
}
