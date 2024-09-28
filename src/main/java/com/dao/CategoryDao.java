package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.model.Category;

@Repository
public class CategoryDao {

	@Autowired
	private SessionFactory factory;
	
	@Autowired
	HibernateTemplate hibernateTemplate;
	

	public Category getdata(int id) {
	   Category c = this.hibernateTemplate.get(Category.class, id);
	   return c;
	}
	
	// Add new data...
	@Transactional
	public Object insert(Category category) {
		Object s = (Object) this.hibernateTemplate.save(category);
		return s;
	}
	//get all data for product form 
	public List<Category> getAllCatTitleAndId(){
		List<Category> loadAll = this.hibernateTemplate.loadAll(Category.class);
		return loadAll;
	}
	
	public List <Category> getTitleAndId() {
		Session openSession = this.factory.openSession();
		Query q = openSession.createQuery("from Category");
		List<Category> list = q.list();
		return list;
	}
	
	
	
	public CategoryDao(HibernateTemplate hibernateTemplate) {
		super();
		this.hibernateTemplate = hibernateTemplate;
	}
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	public SessionFactory getFactory() {
		return factory;
	}
	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}
	public CategoryDao(HibernateTemplate hibernateTemplate, SessionFactory factory) {
		super();
		this.hibernateTemplate = hibernateTemplate;
		this.factory = factory;
	}
	public CategoryDao() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CategoryDao(SessionFactory factory) {
		this.factory = factory;
	}
}