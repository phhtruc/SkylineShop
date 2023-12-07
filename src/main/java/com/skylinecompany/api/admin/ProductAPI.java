package com.skylinecompany.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.skylinecompany.dto.ProductResponseDto;
import com.skylinecompany.entity.ProductEntity;
import com.skylinecompany.service.admin.impl.ProductServiceImpl;

@RestController
public class ProductAPI {
	
	@Autowired
	ProductServiceImpl productServiceImpl;
	
	@GetMapping("/api/products")
	public ProductResponseDto getAllData() {
		ProductResponseDto response = new ProductResponseDto();
	    response.setProducts(productServiceImpl.getAllProduct());
	    response.setCategories(productServiceImpl.findAllCategory());
	    response.setBrands(productServiceImpl.findAllBrand());
	    return response;
	}
	
	@PostMapping("/api/products")
	public ResponseEntity<String> handleFormUpload(
	        @RequestBody ProductEntity productData,
	        @RequestParam(required = false) MultipartFile[] fileData) {
	    return ResponseEntity.ok("Success");
	}
	
	@DeleteMapping("/api/products/{id}")
	public ResponseEntity<?> deleteProduct(@PathVariable Integer id) {
		ProductResponseDto response = new ProductResponseDto();
		response.setProducts(productServiceImpl.deleteProductById(id));
	    response.setCategories(productServiceImpl.findAllCategory());
	    response.setBrands(productServiceImpl.findAllBrand());
	    return ResponseEntity.ok(response);
	}



}
