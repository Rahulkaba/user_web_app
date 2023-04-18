package org.jsp.mvc.Service;

import java.util.List;

import org.jsp.mvc.dao.UserDao;
import org.jsp.mvc.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	 
	@Autowired
	 private UserDao dao;


	public User saveUser(User user){
		return dao.saveUser(user);
	}

	public User updateUser(User user){
		return dao.updateUser(user);	
	}
	
	public boolean deletUser(int id){

		return dao.deletUser(id);	
	}
	
	public User verifyUser(String password,long phone){

		return dao.verifyUser(password,phone);	
	}
	
	public List<User> findAllUser(){

		return dao.findAllUser();	
	}
	
	public User findUserById(int id){

		return dao.findUserById(id);
	}

}
