package com.skylinecompany.DAO;

import java.util.List;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Repository;

import com.skylinecompany.entity.VoucherEntity;
import com.skylinecompany.mapper.VoucherMapper;

@Repository
public class VoucherDAO extends BaseDAO{
	
	public VoucherEntity findVoucherByCode(String code) {
	    String sql = "SELECT * FROM Voucher WHERE VoucherCode = ?";
	    
	    try {
	        VoucherEntity voucher = _jdbcTemplate.queryForObject(sql, new Object[]{code}, new VoucherMapper());
	        return voucher;
	    } catch (EmptyResultDataAccessException e) {
	        return null;
	    }
	}
	
	private StringBuffer SqlFindAllVoucher(int id) {
		StringBuffer  varname1 = new StringBuffer();
		varname1.append("SELECT Voucher.* ");
		varname1.append("FROM Voucher_User ");
		varname1.append("INNER JOIN [User] ON Voucher_User.id_user = [User].id_user ");
		varname1.append("INNER JOIN Voucher ON Voucher_User.VoucherID = Voucher.VoucherID ");
		varname1.append("WHERE [User].id_user = "+id+";");
		return varname1;
	}
	
	public List<VoucherEntity> findAllVoucher(int id){
		String sql = SqlFindAllVoucher(id).toString();
		List<VoucherEntity> list = _jdbcTemplate.query(sql, new VoucherMapper());
		return list;
	}


}
