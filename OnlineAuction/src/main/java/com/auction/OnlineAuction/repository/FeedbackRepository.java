package com.auction.OnlineAuction.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.auction.OnlineAuction.model.Feedback;

@Repository
public interface FeedbackRepository extends JpaRepository<Feedback, Integer>{

	
	@Query("Select f from Feedback f where f.seller.sellerId = :sellerId")
	public List<Feedback> getFeedbacksBySellerId(@Param("sellerId") int sellerId);
}
