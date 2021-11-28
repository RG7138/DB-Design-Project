package com.auction.OnlineAuction.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.auction.OnlineAuction.model.Seller;

@Repository
public interface SellerRepository extends JpaRepository<Seller, Integer>{
	
	@Query("Select s from Seller s where s.user.userId = :userId")
	public Seller getSellerByUserId(@Param("userId") int userId);
}
