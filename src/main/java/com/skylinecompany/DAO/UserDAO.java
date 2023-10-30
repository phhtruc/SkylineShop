package com.skylinecompany.DAO;

import org.springframework.stereotype.Repository;

import com.skylinecompany.entity.UserEntity;
import com.skylinecompany.mapper.UserMapper;

@Repository
public class UserDAO extends BaseDAO {
	
    public UserEntity findOneByUserName(String name) {
        String sql = "select * from [User]\r\n"
        		+ "where email = ?";
        UserEntity user = _jdbcTemplate.queryForObject(sql, new Object[] {name}, new UserMapper());
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
		sql.append("INSERT INTO [User] (email, phone, password, id_role, fullName) ");
		sql.append("VALUES ('"+user.getEmail()+"', '"+user.getPhone()+"', '"+user.getPassword()+"', '"+user.getId_role()+"', '"+user.getFullName()+"')");

		int insert = _jdbcTemplate.update(sql.toString());

		return insert;
	}
}
