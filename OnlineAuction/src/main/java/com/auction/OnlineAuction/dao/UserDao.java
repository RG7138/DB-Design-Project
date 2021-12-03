package com.auction.OnlineAuction.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.auction.OnlineAuction.model.Buyer;
import com.auction.OnlineAuction.model.User;
import com.auction.OnlineAuction.repository.UserRepository;

@Service
public class UserDao {

	@Autowired
	UserRepository userRepository;
	
	public List<User> getUserDetails() {
		return userRepository.findAll();
	}
	
	public User addUser(User user) {
		return userRepository.save(user);
	}
	
	public User userLogin(String email, String password) {
		User user = userRepository.getUserByEmailAndPassword(email, password);
		return user;
	}
	
	@Transactional
	public int updateUser(User user) {
		
		  int updatedRows = userRepository.updateUser(user.getAddress(), user.getPhoneNumber(), user.getPassword(), user.getUserId()); 
		  return updatedRows;
		 

	}
}
