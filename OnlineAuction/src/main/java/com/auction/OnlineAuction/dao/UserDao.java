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
		return userRepository.findAllByStatus();
	}
	
	public User addUser(User user) {
		return userRepository.save(user);
	}
	
	public User getUserById(int userId) {
		return userRepository.findById(userId).get();
	}
	
	public void deactivateUser(int userId) {
		User user = getUserById(userId);
		user.setStatus(0);
		userRepository.save(user);
	}
	
	public User userLogin(String email, String password) {
		User user = userRepository.getUserByEmailAndPassword(email, password);
		return user;
	}
	
	@Transactional
	public void updateUser(User user) {
		
		User originalUser = userRepository.findById(user.getUserId()).get();
		originalUser.setAddress(user.getAddress());
		originalUser.setPhoneNumber(user.getPhoneNumber());
		originalUser.setPassword(user.getPassword());
		userRepository.save(originalUser);

	}
}
