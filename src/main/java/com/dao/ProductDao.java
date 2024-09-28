package com.dao;

import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Product;

@Repository
public class ProductDao {

	@Autowired
	private SessionFactory factory;

	@Autowired
	HibernateTemplate hibernateTemplate;

	// Add new data...
	@Transactional
	public Object insert(Product product) {
		Object s = (Object) this.hibernateTemplate.save(product);
		return s;
	}

	// get all geta from product
	public List<Product> getAllData() {
		List<Product> loadAll = this.hibernateTemplate.loadAll(Product.class);
		return loadAll;
	}
	
	// get all products
	public List<Product> getAllProducts(){
		Session s = factory.openSession();
		Query q = s.createQuery("from Product");
		List<Product> resultList = q.list();
		return resultList;
	}
	
	// get all products of given category
		public List<Product> getAllProductsById(int cid){
			Session s = factory.openSession();
			Query q = s.createQuery("from Product as p where p.category.categoryId=: id");
			q.setParameter("id", cid);
			List<Product> resultList = q.list();
			return resultList;
		}
	
	
	
	public ProductDao(HibernateTemplate hibernateTemplate) {
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

	public ProductDao(HibernateTemplate hibernateTemplate, SessionFactory factory) {
		super();
		this.hibernateTemplate = hibernateTemplate;
		this.factory = factory;
	}

	public ProductDao() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ProductDao(SessionFactory factory) {
		this.factory = factory;
	}
}
