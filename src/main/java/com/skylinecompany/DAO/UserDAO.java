package com.skylinecompany.DAO;

import org.springframework.stereotype.Repository;

import com.skylinecompany.entity.UserEntity;
import com.skylinecompany.mapper.UserMapper;

@Repository
public class UserDAO extends BaseDAO {
	
    public UserEntity findOneByUserName(String name) {
        String sql = "select * from [User]\r\n"
        		+ "where username = ?";
        UserEntity user = _jdbcTemplate.queryForObject(sql, new Object[] {name}, new UserMapper());
        return user;
    }
}
