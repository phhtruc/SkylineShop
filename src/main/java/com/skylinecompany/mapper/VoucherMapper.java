package com.skylinecompany.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.skylinecompany.entity.VoucherEntity;

public class VoucherMapper implements RowMapper<VoucherEntity>{

	@Override
	public VoucherEntity mapRow(ResultSet rs, int rowNum) throws SQLException {
		VoucherEntity v = new VoucherEntity();
		v.setConditionPrice(rs.getDouble("conditionPrice"));
		v.setCreatedAt(rs.getDate("createdAt"));
		v.setCreatedBy(rs.getString("createdBy"));
		v.setDiscountAmount(rs.getInt("discountAmount"));
		v.setEndDate(rs.getDate("endDate"));
		v.setUsed(rs.getBoolean("isUsed"));
		v.setModifiedAt(rs.getDate("modifiedAt"));
		v.setModifiedBy(rs.getString("modifiedBy"));
		v.setPercentage(rs.getInt("percentage"));
		v.setStartDate(rs.getDate("startDate"));
		v.setUsageLimit(rs.getInt("usageLimit"));
		v.setVoucherCode(rs.getString("voucherCode"));
		return v;
	}

}
