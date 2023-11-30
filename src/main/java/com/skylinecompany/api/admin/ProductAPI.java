package com.skylinecompany.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.skylinecompany.dto.ProductResponseDto;
import com.skylinecompany.entity.ProductEntity;
import com.skylinecompany.service.admin.impl.ProductServiceImpl;

@RestController
@RequestMapping("/api/products")
public class ProductAPI {
	
	@Autowired
	ProductServiceImpl productServiceImpl;
	
	@GetMapping
	public ProductResponseDto getAllData() {
		ProductResponseDto response = new ProductResponseDto();
	    response.setProducts(productServiceImpl.getAllProduct());
	    response.setCategories(productServiceImpl.findAllCategory());
	    response.setBrands(productServiceImpl.findAllBrand());
	    return response;
	}
	
	@PostMapping
	public ResponseEntity<String> handleFormUpload(
	        @RequestBody ProductEntity productData,
	        @RequestParam(required = false) MultipartFile[] fileData) {
	    return ResponseEntity.ok("Success");
	}



}
