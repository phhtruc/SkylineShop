package com.skylinecompany.DAO;

import org.springframework.stereotype.Repository;

@Repository
public class SortByPriceDAO extends BaseDAO{
	
	private String SqlString1() {
	    StringBuffer varname1 = new StringBuffer();
	    varname1.append("SELECT p.id_product, p.product_name, p.price, p.[desc], ");
	    varname1.append("p.id_brand, p.id_cate, ( ");
	    varname1.append("SELECT TOP 1 [image] FROM Product_Image WHERE id_product = p.id_product ");
	    varname1.append(") AS [image] ");
	    varname1.append("FROM Product p ");
	    varname1.append("WHERE p.id_cate = ? ");
	    varname1.append("ORDER BY p.price ASC;");
	    return varname1.toString();
	}

}
