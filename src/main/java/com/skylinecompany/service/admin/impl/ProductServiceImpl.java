package com.skylinecompany.service.admin.impl;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.skylinecompany.DAO.BrandDAO;
import com.skylinecompany.DAO.CategoryDAO;
import com.skylinecompany.DAO.ProductDAO;
import com.skylinecompany.entity.BrandEntity;
import com.skylinecompany.entity.CategoryEntity;
import com.skylinecompany.entity.FileEntity;
import com.skylinecompany.entity.ProductEntity;
import com.skylinecompany.service.admin.IProductService;

@Service
public class ProductServiceImpl implements IProductService{
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	BrandDAO brandDAO;
	
	@Autowired
	HttpServletRequest request;
	

	@Override
	public List<ProductEntity> getAllProduct() {
		// TODO Auto-generated method stub
		return productDAO.getAllProduct();
	}

	@Override
	public List<CategoryEntity> findAllCategory() {
		// TODO Auto-generated method stub
		return categoryDAO.findAllCategory();
	}

	@Override
	public List<BrandEntity> findAllBrand() {
		// TODO Auto-generated method stub
		return brandDAO.findAllBrand();
	}

	@Override
	public List<ProductEntity> deleteProductById(int id) {
		// TODO Auto-generated method stub
		return productDAO.deleteProductById(id);
	}

	//Insert Product
	@Override
	public List<ProductEntity> addProduct(ProductEntity p, MultipartFile[] file) {
		List<FileEntity> fileEntity = new ArrayList<FileEntity>();
		
		for(MultipartFile fileName : file) {
			String name = fileName.getOriginalFilename();
			FileEntity newFile = new FileEntity();
			newFile.setFileName(name);
			fileEntity.add(newFile);
			
			//Them vao thu muc
			if(fileEntity != null){
				String dirFile = request.getServletContext().getRealPath("/") + "template" + File.separator + "web" + File.separator + "images" ;
		        //System.out.println(dirFile);
				File fileDir = new File(dirFile);
				if(!fileDir.exists()){ // nếu đường dẫn rỗng thì tạo mới
					fileDir.mkdir();
				}
				try {
					fileName.transferTo(new File(fileDir + File.separator + name));
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		    }
		}
		
		//Them fileName vào db
		return productDAO.addProductImage(p, fileEntity);
	}

	@Override
	public ProductEntity getOneProductById(int id) {
		return productDAO.getOneProductById(id);
	}

	@Override
	public List<FileEntity> getAllFileName(int id) {
		// TODO Auto-generated method stub
		return productDAO.getAllImages(id);
	}
	
	//Update Product
	@Override
	public List<ProductEntity> updateProduct(int id, ProductEntity p, MultipartFile[] file) {
		List<FileEntity> fileEntity = new ArrayList<FileEntity>();
		
		for(MultipartFile fileName : file) {
			String name = fileName.getOriginalFilename();
			FileEntity newFile = new FileEntity();
			newFile.setFileName(name);
			fileEntity.add(newFile);
			
			//Them vao thu muc
			if(fileEntity != null){
				String dirFile = request.getServletContext().getRealPath("/") + "template" + File.separator + "web" + File.separator + "images" ;
		        //System.out.println(dirFile);
				File fileDir = new File(dirFile);
				if(!fileDir.exists()){ // nếu đường dẫn rỗng thì tạo mới
					fileDir.mkdir();
				}
				try {
					fileName.transferTo(new File(fileDir + File.separator + name));
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		    }
		}
		
		//Them fileName vào db
		return productDAO.updateProductImage(id, p, fileEntity);
	}

}
