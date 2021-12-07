package com.auction.OnlineAuction.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.auction.OnlineAuction.model.Buyer;
import com.auction.OnlineAuction.repository.BuyerRepository;

@Service
public class BuyerDao {

	@Autowired
	BuyerRepository buyerRepository;
	
	public List<Buyer> getBuyerDetails() {
		return buyerRepository.findAll();
	}
	
	public Buyer addBuyer(Buyer buyer) {
		return buyerRepository.save(buyer);
	}
	
	public Buyer getBuyerByUserId(int userId) {
		return buyerRepository.getBuyerByUserId(userId);
	}
	
	@Transactional
	public int updateBuyer(Buyer buyer) {
		
		  int updatedRows = buyerRepository.UpdateBuyer(buyer.getShippingAddress(), buyer.getBuyerId()); 
		  return updatedRows;
		 

	}
}
