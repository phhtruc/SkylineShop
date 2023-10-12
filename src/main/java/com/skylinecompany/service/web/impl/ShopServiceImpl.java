package com.skylinecompany.service.web.impl;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skylinecompany.DAO.BrandDAO;
import com.skylinecompany.DAO.CategotyDAO;
import com.skylinecompany.DAO.Product_ImageDAO;
import com.skylinecompany.DAO.SearchDAO;
import com.skylinecompany.dto.Product_ImageDto;
import com.skylinecompany.entity.BrandEntity;
import com.skylinecompany.entity.CategoryEntity;
import com.skylinecompany.service.web.IShopService;

@Service
public class ShopServiceImpl implements IShopService {

	@Autowired
	Product_ImageDAO proIma;

	@Autowired
	CategotyDAO cate;

	@Autowired
	BrandDAO b;

	@Autowired
	SearchDAO s;

	@Override
	public List<Product_ImageDto> findAllProduct_Image() {
		return proIma.findAllProduct_Image();
	}

	@Override
	public List<CategoryEntity> findAllCategory() {
		return cate.findAllCategory();
	}
	
	@Override
	public List<BrandEntity> findAllBrand() {
		return b.findAllBrand();
	}

	@Override
	public List<Product_ImageDto> findAllProductByNameCategory(String name) {
		return proIma.findProductByNameCategory(name);
	}

	@Override
	public List<Product_ImageDto> findAllProductByNameBrand(String brand) {
		return proIma.findProductByNameBrand(brand);
	}

	@Override
	public List<Product_ImageDto> findProductBySearchName(String name) {
		return s.findProductBySearchName(name);
	}

	@Override
	public List<Product_ImageDto> findProductByPrice(String sort) {
		// TODO Auto-generated method stub
		return proIma.findProductByPrice(sort);
	}

	@Override
	public List<Product_ImageDto> findProduct(String cate, String brand, String sort) {

		// Lấy danh sách sản phẩm
		List<Product_ImageDto> productList = new ArrayList<>();
		if (cate != null) {
			productList = findAllProductByNameCategory(cate);
		} else if (brand != null) {
			productList = findAllProductByNameBrand(brand);
		} else {
			productList = proIma.findAllProduct_Image();
		}

		// Lọc theo giá
		if (sort != null) {
			if (sort.equals("asc")) {
				productList = productList.stream().sorted(Comparator.comparing(Product_ImageDto::getPrice))
						.collect(Collectors.toList());
			} else if (sort.equals("desc")) {
				productList = productList.stream().sorted(Comparator.comparing(Product_ImageDto::getPrice).reversed())
						.collect(Collectors.toList());
			}

			// Sắp xếp danh sách sản phẩm
			if (sort != null) {
				switch (sort) {
				case "price_asc":
					productList = productList.stream().sorted(Comparator.comparing(Product_ImageDto::getPrice))
							.collect(Collectors.toList());
					break;
				case "price_desc":
					productList = productList.stream()
							.sorted(Comparator.comparing(Product_ImageDto::getPrice).reversed())
							.collect(Collectors.toList());
					break;
				default:
					break;
				}
			}

		}
		return productList;
	}

	@Override
	public List<Product_ImageDto> GetDataProductsPaginate(String cate, String brand, String sort, int start, int totalPage) {
		List<Product_ImageDto> listProduct = proIma.GetDataProductsPaginate(cate, brand, start, totalPage);
		if (sort != null) {
			if (sort.equals("asc")) {
				listProduct = listProduct.stream().sorted(Comparator.comparing(Product_ImageDto::getPrice))
						.collect(Collectors.toList());
			} else if (sort.equals("desc")) {
				listProduct = listProduct.stream().sorted(Comparator.comparing(Product_ImageDto::getPrice).reversed())
						.collect(Collectors.toList());
			}
		}
		return listProduct;
	}
}
