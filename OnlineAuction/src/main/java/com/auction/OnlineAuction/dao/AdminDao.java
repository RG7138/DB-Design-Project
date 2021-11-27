package com.auction.OnlineAuction.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.OnlineAuction.model.Admin;
import com.auction.OnlineAuction.repository.AdminRepository;

@Service
public class AdminDao {

	@Autowired
	AdminRepository adminRepository;
	
	public List<Admin> getAdminDetails() {
		
		return adminRepository.findAll();
	}
}
