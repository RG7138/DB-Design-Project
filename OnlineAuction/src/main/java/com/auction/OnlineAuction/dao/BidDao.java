package com.auction.OnlineAuction.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.OnlineAuction.model.Bid;
import com.auction.OnlineAuction.repository.BidRepository;

@Service
public class BidDao {

	@Autowired
	BidRepository bidRepository;
	
	public List<Bid> getBidDetails() {
		return bidRepository.findAll();
	}
	
	public List<Bid> getBidDetailsByBuyerId(int buyerId) {
		return bidRepository.getBidByBuyerId(buyerId);
	}
	
	public Bid saveBid(Bid bid) {
		return bidRepository.save(bid);
	}
}
