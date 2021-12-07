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
	
	public Seller addSeller(Seller seller) {
		return sellerRepository.save(seller);
	}
	
	public Seller getSellerByUserId(int userId) {
		return sellerRepository.getSellerByUserId(userId);
	}
	
	public void updateSeller(Seller seller) {
		Seller originalSeller = sellerRepository.findById(seller.getSellerId()).get();
		originalSeller.setAccountNumber(seller.getAccountNumber());
		originalSeller.setRoutingNumber(seller.getRoutingNumber());
		sellerRepository.save(originalSeller);
	}
}
