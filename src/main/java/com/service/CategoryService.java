package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CategoryDao;
import com.model.Category;

@Service
public class CategoryService {

	@Autowired
	CategoryDao categoryDao;
	
	public Object createCategory(Category category) {
		return (Object) this.categoryDao.insert(category);
	}
//non usable	
//	public void m() {
//		Category getdata = this.categoryDao.getdata(472);
//		System.out.println(getdata);	
//	}
	
	public List<Category> getAllCatTitleAndIdByService(){
		List<Category> allCatTitleAndId = this.categoryDao.getAllCatTitleAndId();
		return allCatTitleAndId;
	}
	
	//non usable
	public List<Category> getTilteByService(){
		List<Category> title = this.categoryDao.getTitleAndId();
		return title;
	}
	public String name() {	
		return "Hello World";
	}
}