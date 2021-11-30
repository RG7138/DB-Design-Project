package com.auction.OnlineAuction.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.OnlineAuction.model.Auction;
import com.auction.OnlineAuction.model.Bid;
import com.auction.OnlineAuction.repository.AuctionRepository;

@Service
public class AuctionDao {

	@Autowired
	AuctionRepository auctionRepository;
	
	public List<Auction> getAuctionDetails() {
		return auctionRepository.findAll();
	}
	
	public List<Auction> allAuctionsByCategory(Integer product_id) {
		List<Auction> auc = auctionRepository.getAllproducts(product_id);
		return auc;
	}
	
	public List<Auction> allAuctionsBySeller(int seller_id){
		List<Auction> auc = auctionRepository.getAllproductsForSeller(seller_id);
		return auc;
	}
	
	public Auction newAuction(Auction auc) {			
		return auctionRepository.save(auc);
	}
	
	
}
