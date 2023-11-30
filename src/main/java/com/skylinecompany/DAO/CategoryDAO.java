package com.skylinecompany.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.skylinecompany.entity.CategoryEntity;
import com.skylinecompany.mapper.CategoryMapper;

@Repository
public class CategoryDAO {
	
	@Autowired
	public JdbcTemplate _jdbcTempale;
	
	public List<CategoryEntity> findAllCategory(){
		String sql = "select * from Category";
		List<CategoryEntity> list = _jdbcTempale.query(sql, new CategoryMapper());
		return list;
	}
	
}
