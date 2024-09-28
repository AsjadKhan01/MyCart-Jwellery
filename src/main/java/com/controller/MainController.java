package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.CategoryDao;
import com.dao.ProductDao;
import com.model.Category;
import com.model.Product;
import com.service.CategoryService;
import com.service.ProductService;

@Controller
public class MainController {

	@Autowired
	ProductDao productDao;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/fhome")
	public String viewhandler() {
		return "home";
	}

	@RequestMapping("/flogin")
	public String viewhandler1() {
		return "login";
	}
	
	@RequestMapping("/fring")
	public String viewhandler2() {
		return "ringpage";
	}
	
	@RequestMapping("/fbracelets")
	public String viewhandler3() {
		return "bracelets";
	}
	
	@RequestMapping("/fgift")
	public String viewhandler4() {
		return "gift";
	}
	
	@RequestMapping("/mycart")
	public String viewhandler9(@RequestParam ("cartid") String id) {
		
		System.out.println("mycart id "+ id);
		Category getdata = this.categoryDao.getdata(Integer.parseInt(id));
		
		System.out.println(getdata);

		return "cart";
	}
	
	
	
	@RequestMapping("/ftemp")
	public String viewhandler00() {
		List<Category> ts = this.categoryService.getTilteByService();
		for (Category c : ts) {
//			System.out.println(c.getCategoryTitle() + " * " + c.getCategoryId());
			System.out.println("*********************"+c.getCategoryTitle());
		}
		return "login";
	}
	
	@RequestMapping("/viewProducts")
	public String viewhandler2(Model model, HttpServletRequest request) {
		List<Product> Pdata = this.productService.getAllProductDataByService();
		System.out.println(Pdata.size());
		for(Product p : Pdata) {
			System.out.println(p.getProductImage());
		}
		
		//THE CODE IS WORK
//		List<String> desc = new ArrayList<String>();
//		List<String> name = new ArrayList<String>();
//		List<Integer> disc = new ArrayList<Integer>();
//		for(Product p : Pdata) {
//			desc.add(p.getProcuctDesc());
//			name.add(p.getProductName());
//			disc.add(p.getProductDiscount());
//		}
//		request.setAttribute("pdesc", desc);
//		request.setAttribute("pname", name);
//		request.setAttribute("pdisc", disc);
		
		return "viewlist";
	}
}