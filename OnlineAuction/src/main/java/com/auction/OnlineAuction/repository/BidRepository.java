package com.auction.OnlineAuction.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.auction.OnlineAuction.model.Bid;

@Repository
public interface BidRepository extends JpaRepository<Bid, Integer>{
	
	@Query("Select b from Bid b where b.buyer.buyerId = :buyerId")
	public List<Bid> getBidByBuyerId(@Param("buyerId") int buyerId);

}
