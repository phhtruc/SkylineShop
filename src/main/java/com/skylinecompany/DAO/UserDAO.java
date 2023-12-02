package com.skylinecompany.DAO;

import java.nio.charset.StandardCharsets;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.skylinecompany.dto.UsersDto;
import com.skylinecompany.entity.UserEntity;
import com.skylinecompany.mapper.UserAdminMapper;
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
	
	public int AddAccountGoogle(UserEntity user) {
		  StringBuilder sql = new StringBuilder();
		  sql.append("INSERT INTO [User] (email, phone, id_role, fullName, imageuser)");
		  sql.append("VALUES ('" + new String(user.getEmail().getBytes(), StandardCharsets.UTF_8) + "', '" + new String(user.getPhone().getBytes(), StandardCharsets.UTF_8) + "','" + user.getId_role() + "', '" + new String(user.getFullName().getBytes(), StandardCharsets.UTF_8) + "','" + new String(user.getImageuser().getBytes(), StandardCharsets.UTF_8) + "')");

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
	
	private StringBuffer SqlGetAllUser() {
		StringBuffer  varname1 = new StringBuffer();
		varname1.append("SELECT U.id_user, U.fullName, U.phone, U.imageuser, U.email, ");
		varname1.append("    COUNT(O.id_order) AS total_orders, ");
		varname1.append("    MAX(O.id_order) AS latest_order_id, ");
		varname1.append("    format(SUM(OD.total),'##,#\\ VNĐ','es-ES') AS total_order_amount ");
		varname1.append("FROM \"User\" U ");
		varname1.append("LEFT JOIN \"Order\" O ON U.id_user = O.id_cust ");
		varname1.append("LEFT JOIN \"Order_Detail\" OD ON O.id_order = OD.id_order ");
		varname1.append("WHERE U.id_role = 2 ");
		varname1.append("GROUP BY U.id_user, U.fullName, U.phone, U.imageuser, U.email ");
		varname1.append("ORDER BY U.id_user;");
		return varname1;
	}
	
	public List<UsersDto> getAllUser(){
		String sql = SqlGetAllUser().toString();
		List<UsersDto> list = _jdbcTemplate.query(sql, new UserAdminMapper());
		return list;
	}
	
}
