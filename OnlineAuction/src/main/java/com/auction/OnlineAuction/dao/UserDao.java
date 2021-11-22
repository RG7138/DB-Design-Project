package com.auction.OnlineAuction.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.OnlineAuction.model.User;
import com.auction.OnlineAuction.repository.UserRepository;

@Service
public class UserDao {

	@Autowired
	UserRepository userRepository;
	
	public List<User> getUserDetails() {
		return userRepository.findAll();
	}
}
