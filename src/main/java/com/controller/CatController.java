package com.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.codec.multipart.Part;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.dao.CategoryDao;
import com.dao.ProductDao;
import com.model.Category;
import com.model.Product;
import com.service.CategoryService;
import com.service.ProductService;

@Controller
public class CatController extends HandlerInterceptorAdapter {

	@Autowired
	CategoryService categoryService;
	@Autowired
	ProductService productService;
	@Autowired
	CategoryDao categoryDao;

	@RequestMapping(value = "/catagoryProcess", method = RequestMethod.POST)
	public String catagoryHandler(@ModelAttribute Category category, Model model, HttpServletRequest request) {
		System.out.println(category);
		System.out.println("hey");
		try {
		this.categoryService.createCategory(category);
		}catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("sucmsg", "Category Not Added!!");
		}
		
		request.setAttribute("catogoryAttr", "Product Succefully added");
		model.addAttribute("sucmsg", "Category Add Succesfully !!");
		return "viewlist";
	}

	@RequestMapping(path = "/productProcess", method = RequestMethod.POST)
	public String productHandler(@RequestParam("ppic") CommonsMultipartFile file, @RequestParam("pname") String pName,
			@RequestParam("pdescription") String pDescription, @RequestParam("pdiscount") Integer pDiscount,
			@RequestParam("pquantity") Integer pQuantity, @RequestParam("pprice") Integer pPrice,
			@RequestParam("pcat") String pCategory, HttpServletRequest request, HttpSession session, Model model)
			throws FileNotFoundException {

		Product pr = new Product();
		pr.setProductName(pName);
		pr.setProcuctDesc(pDescription);
		pr.setProductDiscount(pDiscount);
		pr.setProductQuantity(pQuantity);
		pr.setProductPrice(pPrice);
		pr.setProductPicName(file.getOriginalFilename());

		Category getdata = this.categoryDao.getdata(Integer.parseInt(pCategory));
		pr.setCategory(getdata);

		byte data[] = file.getBytes();
		// we have save to this file o server...
		String path = session.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources"
				+ File.separator + "images" + File.separator + file.getOriginalFilename();
		model.addAttribute("filename", file.getOriginalFilename());
		System.out.println(path);

		try {
			FileOutputStream fos = new FileOutputStream(path);	
			fos.write(data);
			fos.close();
			
//			String workingDirectory = System.getProperty("user.dir");
//			String absoluteFilePath = "";
//			absoluteFilePath = workingDirectory + File.separator + "myCartImg" + File.separator
//					+ file.getOriginalFilename();
//			System.out.println(">>>" + absoluteFilePath);

			FileInputStream fis = new FileInputStream(path);
			byte[] data1 = new byte[fis.available()];
			fis.read(data1);
			pr.setProductImage(data1);
			System.out.println("Image file successfully.....");

		} catch (IOException e) {
			System.out.println("Error in UPLOADING IMAGE...");
			e.printStackTrace();
		}
		this.productService.createProduct(pr);

		// for success notification..
		request.setAttribute("productAttr", "Product Succefully added");
		model.addAttribute("sucmsg", "Product Succefully added");
		return "admin";
	}
}
