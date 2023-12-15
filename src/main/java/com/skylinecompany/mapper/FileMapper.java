package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.entity.FileEntity;

public class FileMapper implements RowMapper<FileEntity>{

	@Override
	public FileEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
		FileEntity file = new FileEntity();
		file.setFileName(rs.getString("IMAGE"));
		return file;
	}

}
