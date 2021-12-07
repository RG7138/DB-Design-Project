package com.auction.OnlineAuction.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.auction.OnlineAuction.model.Auction;

@Repository
public interface AuctionRepository extends JpaRepository<Auction, Integer>{

	
	@Query("Select a from Auction a where a.seller.sellerId = :sellerId")
	public List<Auction> getAuctionBySellerId(@Param("sellerId") int sellerId);
	
	@Query("Select a from Auction a where a.product.productId = :productId")
	public List<Auction> getAuctionByProductId(@Param("productId") int productId);
}
