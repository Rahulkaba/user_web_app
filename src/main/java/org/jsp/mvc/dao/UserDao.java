package org.jsp.mvc.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.jsp.mvc.dto.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@SuppressWarnings("all")
public class UserDao {
	
	@Autowired
    private  EntityManager manager;
	
	public User saveUser(User user) {
	 EntityTransaction transaction=manager.getTransaction();
	 manager.persist(user);
	 transaction.begin();
	 transaction.commit();
     return user;
	}
	
	public User updateUser(User user){
		EntityTransaction transaction=manager.getTransaction();
		 manager.merge(user);
		 transaction.begin();
		 transaction.commit();
	     return user;  	
	}
	
	public boolean deletUser(int id){
	  EntityTransaction transaction=manager.getTransaction();
	  User user=manager.find(User.class ,id);
	 
	  if(user!=null) {
		  manager.remove(user);
		  transaction.begin();
		  transaction.commit();
	  }
	 
	  return  false;	
	}
	
	public User verifyUser(String password,long phone){
		Query q=manager.createQuery("select u from User u where u.phone=?1 and u.password=?2");
		q.setParameter(1, phone);
		q.setParameter(2, password);
		List<User> users=q.getResultList();
		if(users.size()>0)
			return users.get(0);

		return  null;	
	}
	
	public List<User> findAllUser(){ 
	  Query q=manager.createQuery("select u from User u");
	  return q.getResultList();	
	}
	
	public User findUserById(int id){
		return manager.find(User.class, id);
	}
	
	
}
