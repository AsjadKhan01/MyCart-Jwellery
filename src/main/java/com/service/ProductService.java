package com.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProductDao;
import com.model.Product;

@Service
public class ProductService {
	
	@Autowired
	ProductDao productDao;

	public Object createProduct(Product product) {
		return (Object)this.productDao.insert(product);
	}
	
	public List<Product> getAllProductDataByService(){
		List<Product> allData = this.productDao.getAllData();
		return allData;
	}
}
