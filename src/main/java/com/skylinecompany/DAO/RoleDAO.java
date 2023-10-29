package com.skylinecompany.DAO;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.skylinecompany.entity.RoleEntity;
import com.skylinecompany.mapper.RoleMapper;

@Repository
public class RoleDAO extends BaseDAO {

	private int findIdByUserName(String name) {
		String sql = "select id_role from [User] where username = ?";
		return _jdbcTemplate.queryForObject(sql, Integer.class, name);
	}

	
	public List<RoleEntity> findAll(String name){
		int id = findIdByUserName(name);
		String sql = "select * from Role where id_role = ?";
		List<RoleEntity> list = _jdbcTemplate.query(sql, new Object[] {id}, new RoleMapper());
		return list;
	}

}
