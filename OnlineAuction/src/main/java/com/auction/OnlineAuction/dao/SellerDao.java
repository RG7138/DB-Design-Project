package com.auction.OnlineAuction.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.OnlineAuction.model.Seller;
import com.auction.OnlineAuction.repository.SellerRepository;

@Service
public class SellerDao {

	@Autowired
	SellerRepository sellerRepository;
	
	public List<Seller> getSellerDetails() {
		return sellerRepository.findAll();
	}
}
