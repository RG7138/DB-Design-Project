package com.auction.OnlineAuction.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.OnlineAuction.model.Auction;
import com.auction.OnlineAuction.repository.AuctionRepository;

@Service
public class AuctionDao {

	@Autowired
	AuctionRepository auctionRepository;
	
	public List<Auction> getAuctionDetails() {
		return auctionRepository.findAll();
	}
	
	public List<Auction> getAuctionDetailsBySellerId(int sellerId) {
		return auctionRepository.getAuctionBySellerId(sellerId);
	}
	
	public Auction saveAuction(Auction auction) {
		return auctionRepository.save(auction);
	}
	
	public Auction getAuctionByProductId(int productId) {
		return auctionRepository.getAuctionByProductId(productId).get(0);
	}
}
