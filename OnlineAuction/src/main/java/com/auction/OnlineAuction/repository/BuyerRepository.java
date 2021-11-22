package com.auction.OnlineAuction.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.auction.OnlineAuction.model.Buyer;

@Repository
public interface BuyerRepository extends JpaRepository<Buyer, Integer>{

}
