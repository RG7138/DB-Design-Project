package com.auction.OnlineAuction.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.auction.OnlineAuction.model.Bid;
import com.auction.OnlineAuction.model.User;
import com.auction.OnlineAuction.repository.BidRepository;

@Service
public class BidDao {

	@Autowired
	BidRepository bidRepository;
	
	public List<Bid> getBidDetails() {
		return bidRepository.findAll();
	}
	
	public List<Bid> allProductidBids(Integer product_id) {
		List<Bid> bid = bidRepository.bidsAccordingtoProductid(product_id);
		return bid;
	}
	
	public Integer maxBidforaProduct(Integer product_id) {
		Integer maxbid = bidRepository.maxBidforproduct(product_id);
		return maxbid;
	}
	
	public List<Bid> getAllBidsforaBuyer(Integer buyer_id){
		List<Bid> bid= bidRepository.bidsOfABuyer(buyer_id);
		return bid;
	}
	
	public Bid newBid(Bid bid) {
		return bidRepository.save(bid);
	}
	
	
}
