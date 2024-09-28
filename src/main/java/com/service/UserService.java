package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserDao;
import com.model.User;

@Service
public class UserService {

	@Autowired
	UserDao userDao;
	
	public Object createUser(User user) {
		return (Object) this.userDao.insert(user);
	}
	
	
	public User authentUser(String email,String password) {
		return this.userDao.getUserByEmailAndPassword(email, password);
	}
}
