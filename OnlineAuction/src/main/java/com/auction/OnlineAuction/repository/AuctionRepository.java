package com.auction.OnlineAuction.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.auction.OnlineAuction.model.Auction;

@Repository
public interface AuctionRepository extends JpaRepository<Auction, Integer>{

	@Query("from Auction a where a.product= :product_id")
	public List<Auction> getAllproducts(@Param("product_id") int product_id);
	
	@Query("from Auction a where a.seller= :seller_id")
	public List<Auction> getAllproductsForSeller(@Param("seller_id") int seller_id);
	
}
