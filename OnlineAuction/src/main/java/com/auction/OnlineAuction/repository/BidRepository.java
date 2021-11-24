package com.auction.OnlineAuction.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.auction.OnlineAuction.model.Bid;

@Repository
public interface BidRepository extends JpaRepository<Bid, Integer>{

}
