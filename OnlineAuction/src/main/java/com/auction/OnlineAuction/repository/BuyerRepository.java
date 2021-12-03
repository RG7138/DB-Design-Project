package com.auction.OnlineAuction.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.auction.OnlineAuction.model.Buyer;

@Repository
public interface BuyerRepository extends JpaRepository<Buyer, Integer>{

	@Query("Select b from Buyer b where b.user.userId = :userId")
	public Buyer getBuyerByUserId(@Param("userId") int userId);
	
	
	  @Modifying(clearAutomatically = true)
	  @Transactional
	  @Query("Update Buyer b set b.shippingAddress = :shippingAddress where b.buyerId = :buyerId") 
	  public int UpdateBuyer(@Param("shippingAddress") String shippingAddress , @Param("buyerId") int buyerId);
	 
}
