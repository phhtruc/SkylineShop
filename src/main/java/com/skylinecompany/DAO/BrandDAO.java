package com.skylinecompany.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.skylinecompany.entity.BrandEntity;
import com.skylinecompany.mapper.BrandMapper;

@Repository
public class BrandDAO {
	
	@Autowired
	public JdbcTemplate _JdbcTemplate;
	
	public List<BrandEntity> findAllBrand(){
		String sql = "SELECT * FROM Brand";
		List<BrandEntity> list = _JdbcTemplate.query(sql, new BrandMapper());
		return list;
	}
	

}
