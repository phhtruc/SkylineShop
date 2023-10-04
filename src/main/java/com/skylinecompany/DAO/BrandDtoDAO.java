package com.skylinecompany.DAO;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.skylinecompany.dto.BrandDto;
import com.skylinecompany.mapper.BrandDtoMapper;

@Repository
public class BrandDtoDAO {
	
	@Autowired
	public JdbcTemplate _JdbcTemplate;
	
	public List<BrandDto> findAllBrand(){
		String sql = "SELECT DISTINCT brand FROM Product";
		List<BrandDto> list = _JdbcTemplate.query(sql, new BrandDtoMapper());
		return list;
	}


}
