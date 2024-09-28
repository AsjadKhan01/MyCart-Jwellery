package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.model.User;

@Repository
public class UserDao {
	private SessionFactory factory;
	
	@Autowired
	HibernateTemplate hibernateTemplate;

	// Insert new data...
	@Transactional
	public Object insert(User user) {
		Object s = (Object) this.hibernateTemplate.save(user);
		System.out.println(s);
		return s;
	}

	public UserDao(SessionFactory factory) {
		this.factory = factory;
	}

	// get user by email and password
	public User getUserByEmailAndPassword(String email, String password) {
		User user=null;
		try {
			String query = "from User where userEmail =:e and userPassword =:p";
			Session session = factory.openSession();
			
			Query q = session.createQuery(query);
			q.setParameter("e", email);
			q.setParameter("p", password);
			
			user = (User)q.uniqueResult();
			session.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return user;
	}
}