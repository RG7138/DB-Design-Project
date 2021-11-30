package com.auction.OnlineAuction.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.auction.OnlineAuction.model.Bid;

import java.util.List;

@Repository
public interface BidRepository extends JpaRepository<Bid, Integer>{

	//all bids for a product
	@Query("from Bid b where b.product= :product_id")
	public List<Bid> bidsAccordingtoProductid(@Param("product_id") int product);
	
	//max bid for a product
	@Query("Select MAX(b.bidPrice) from Bid b where b.product= :product_id")
	public Integer maxBidforproduct(@Param("product_id") int product);
	
	@Query("from Bid b where b.buyer= :buyer_id")
	public List<Bid> bidsOfABuyer(@Param("buyer_id") int buyer);

}
