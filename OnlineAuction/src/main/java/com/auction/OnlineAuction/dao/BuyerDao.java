package com.auction.OnlineAuction.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.OnlineAuction.model.Buyer;
import com.auction.OnlineAuction.repository.BuyerRepository;

@Service
public class BuyerDao {

	@Autowired
	BuyerRepository buyerRepository;
	
	public List<Buyer> getBuyerDetails() {
		return buyerRepository.findAll();
	}
}
