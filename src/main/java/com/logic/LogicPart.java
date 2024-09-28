package com.logic;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.model.Product;
import com.service.ProductService;

public class LogicPart {
	
	@Autowired
	ProductService productService;

	public List<Product> m1() {
		List<Product> Pdata = this.productService.getAllProductDataByService();

		List<String> s = new ArrayList<String>();
		for (Product p : Pdata) {
			System.out.println(p);
		}
		return Pdata;
	}

}
